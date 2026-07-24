## Theory

To design algorithms for computing FIRST and FOLLOW sets of a context-free grammar to build predictive parsing tables.

$\text{FIRST}(X)$: The set of all terminal symbols that begin strings derived from $X$, including $\epsilon$ (denoted as 'e') if $X$ can derive the empty string.  

$\text{FOLLOW}(A)$: The set of all terminal symbols that can appear immediately to the right of the non-terminal $A$ in some sentential form. The end-marker $ is assigned to the start symbol.  

Mathematical AlgorithmsFIRST Set ComputationInitialize 

$\text{FIRST}(X)$ as empty for all non-terminals.  

For production $X \rightarrow t\alpha$, add terminal $t$ to $\text{FIRST}(X)$.  

For production $X \rightarrow e$, add $e$ to $\text{FIRST}(X)$.  

For production $X \rightarrow Y\alpha$, add $\text{FIRST}(Y)$ (excluding $e$) to $\text{FIRST}(X)$. If $Y$ derives $e$, continue to subsequent symbols; if all derive $e$, add $e$ to $\text{FIRST}(X)$  

FOLLOW Set Computation

Add $ to $\text{FOLLOW}(S)$ where $S$ is the start symbol. 

For production $A \rightarrow \alpha B \beta$, add $\text{FIRST}(\beta)$ (excluding $e$) to $\text{FOLLOW}(B)$.  
If $\beta$ derives $e$ or the production is $A \rightarrow \alpha B$, add $\text{FOLLOW}(A)$ to $\text{FOLLOW}(B)$.  
