.PHONY: examples

CC = xelatex

RESUME_DIR = resume
CV_DIR = "."
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

BUILD_DIR = build

PrashanthSheshappa_resume.pdf:  PSheshappa_resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(BUILD_DIR) $<

coverLetter.pdf: coverLetter.tex
	$(CC) -output-directory=$(BUILD_DIR) $<

clean:
	rm -rf $(BUILD_DIR)/*.pdf
