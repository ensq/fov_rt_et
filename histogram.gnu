# histogram1x1.gnu
# GNUplot script rendering a histogram based on a lone data file.
# Requires GNUplot 4.6 or later.
# ---
# Arguments:
# 1. Data set    : arg_data
# 2. Output mode : arg_terminal
# 3. Output file : arg_output
# ---
# Invoke accordingly:
# gnuplot -e "arg_data='data.dat';arg_terminal='epslatex';arg_output='out.tex'" histogram1x1.gnu

min(p_x, p_y) = (p_x<p_y) ? p_x : p_y
max(p_x, p_y) = (p_x>p_y) ? p_x : p_y
mapToBin(p_x, p_binWidth, p_binMin) = p_binWidth * (floor((p_x - p_binMin) / p_binWidth) + 0.5) + p_binMin
usage(p_iam) = sprintf("%s: Usage: gnuplot -e \"arg_data1-6='data.dat';arg_ylabel1-3='ylabel';arg_terminal='type';arg_output='filename.type'\" histogram.gnu", p_iam)
press(p_iam) = sprintf("%s: Press any key to continue.", p_iam)
default(p_iam, p_var) = sprintf("%s: Warning, using default var: %s!", p_iam, p_var)

# Entry point:
reset
iam = "histograms.gnu"
print sprintf("%s: Enter...", iam)
if(!exists("arg_output")) {
    arg_output = "default.tex"
    print default(iam, arg_output)
}
if(!exists("arg_terminal")) {
    arg_terminal = "epslatex"
    print default(iam, arg_terminal)
}
if(!exists("arg_data")) {
    print usage(iam)
    pause -1 press(iam)
}

set terminal arg_terminal #set terminal postscript
set output arg_output #set output '| ps2pdf - output.pdf'

set size ratio 0.5
set xtics nomirror
set tic scale 0
set yrange [0:]
unset ytics

stats arg_data name "data" nooutput

hist_numBins = 50
hist_data_mean = data_mean_y
hist_data_min = max(data_min_y, hist_data_mean - data_stddev_y)
hist_data_max = min(data_max_y, hist_data_mean + data_stddev_y)
hist_binWidth = (hist_data_max - hist_data_min) / hist_numBins
hist_binMin = hist_data_min
hist_binMax = hist_data_max

set xrange [hist_binMin:hist_binMax]

set boxwidth hist_binWidth
set style fill solid 0.5
set offset graph 0.05, 0.05, 0.05, 0.0

plot arg_data u (mapToBin($1, hist_binWidth, hist_binMin)):(100.0/data_records) smooth freq w boxes lc rgb"black" notitle

set output
print sprintf("%s: Exit.", iam)