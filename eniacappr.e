# Wiring
p c.o 1       
p 1 a19.α 
p 1 a20.α  
p a19.A 2 
p a20.S 2 
p 2 a19.β

# Program Sequence
p i.io 1-1
p 1-1 a19.1i
p 1-1 c.26i
p c.26o 1-2
p 1-2 a20.1i
p 1-2 c.25i
p c.25o 1-3
p 1-3 p.Ci
p p.C1o 1-4 
p 1-4 a19.5i 
p 1-4 a20.5i  
p a19.5o 1-3

# Switch Settings
s c.s26 Klr # K constant for 2442
s c.k5 0
s c.k4 2
s c.k3 4
s c.k2 4
s c.k1 2

s c.s25 Jlr # J constant for 68
s c.j5 0
s c.j4 0
s c.j3 0
s c.j2 6
s c.j1 8

# Operations
s a19.op1 α 
s a20.op1 α
s a19.op5 β
s a20.op5 S 

# Master programmer 50 cycles
s p.d15s1 5 
s p.d14s1 0 
s p.d14s2 1
s p.cC 4 

# Cycling
s cy.op 1a