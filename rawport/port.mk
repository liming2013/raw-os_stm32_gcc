PORTINC = $(ROOT)/rawport

PORTXASM = $(ROOT)/rawport/context_gcc.S

PORTSRC = \
    $(ROOT)/rawport/port.c \
    $(ROOT)/rawport/port_hook.c \
    $(ROOT)/rawport/raw_trace_port.c \
    $(ROOT)/rawport/user_extension.c
