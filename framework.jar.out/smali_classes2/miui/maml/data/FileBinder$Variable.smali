.class Lmiui/maml/data/FileBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/FileBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# instance fields
.field public mIndex:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 43
    const-string v0, "index"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    .line 44
    iget-object v0, p0, Lmiui/maml/data/FileBinder$Variable;->mIndex:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "Variable"

    const-string v1, "fail to load file index expression"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected parseType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x2

    return v0
.end method
