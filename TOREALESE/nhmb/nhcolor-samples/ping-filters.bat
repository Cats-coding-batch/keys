@echo off

nhcolor 02 Coloured ping 
ping google.com -n 10 | nhcolor 0a,TTL 0c,"timeout" 0c,"fault"

