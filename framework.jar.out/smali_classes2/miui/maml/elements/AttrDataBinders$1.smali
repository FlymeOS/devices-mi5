.class Lmiui/maml/elements/AttrDataBinders$1;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AttrDataBinders;


# direct methods
.method constructor <init>(Lmiui/maml/elements/AttrDataBinders;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$1;->this$0:Lmiui/maml/elements/AttrDataBinders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lmiui/maml/elements/AttrDataBinders$1;->this$0:Lmiui/maml/elements/AttrDataBinders;

    # getter for: Lmiui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/maml/elements/AttrDataBinders;->access$000(Lmiui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v3, p0, Lmiui/maml/elements/AttrDataBinders$1;->this$0:Lmiui/maml/elements/AttrDataBinders;

    iget-object v3, v3, Lmiui/maml/elements/AttrDataBinders;->mVars:Lmiui/maml/data/ContextVariables;

    invoke-direct {v2, p1, v3}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AttrDataBinders"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
