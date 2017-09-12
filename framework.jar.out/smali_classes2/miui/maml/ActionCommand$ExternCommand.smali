.class Lmiui/maml/ActionCommand$ExternCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Lmiui/maml/data/Expression;

.field private mStrParaExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 1069
    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 1070
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ExternCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "numPara"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    .line 1071
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ExternCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "strPara"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    .line 1072
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1076
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ExternCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lmiui/maml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1079
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
