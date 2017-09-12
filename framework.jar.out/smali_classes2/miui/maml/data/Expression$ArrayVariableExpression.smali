.class abstract Lmiui/maml/data/Expression$ArrayVariableExpression;
.super Lmiui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayVariableExpression"
.end annotation


# instance fields
.field protected mIndexExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V
    .locals 1
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "indexExp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/Expression$VariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Z)V

    .line 386
    iput-object p3, p0, Lmiui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lmiui/maml/data/Expression;

    .line 387
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 391
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 392
    iget-object v0, p0, Lmiui/maml/data/Expression$ArrayVariableExpression;->mIndexExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 393
    return-void
.end method
