.class Lmiui/maml/data/BroadcastBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# instance fields
.field public mExtraName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 37
    const-string v0, "extra"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 38
    return-void
.end method
