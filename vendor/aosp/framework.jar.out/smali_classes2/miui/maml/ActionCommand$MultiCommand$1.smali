.class Lmiui/maml/ActionCommand$MultiCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ActionCommand$MultiCommand;

.field final synthetic val$screenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$MultiCommand;Lmiui/maml/elements/ScreenElement;)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lmiui/maml/ActionCommand$MultiCommand$1;->this$0:Lmiui/maml/ActionCommand$MultiCommand;

    iput-object p2, p0, Lmiui/maml/ActionCommand$MultiCommand$1;->val$screenElement:Lmiui/maml/elements/ScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1889
    iget-object v1, p0, Lmiui/maml/ActionCommand$MultiCommand$1;->val$screenElement:Lmiui/maml/elements/ScreenElement;

    invoke-static {p1, v1}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v0

    .line 1890
    .local v0, "command":Lmiui/maml/ActionCommand;
    if-eqz v0, :cond_0

    .line 1891
    iget-object v1, p0, Lmiui/maml/ActionCommand$MultiCommand$1;->this$0:Lmiui/maml/ActionCommand$MultiCommand;

    iget-object v1, v1, Lmiui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    :cond_0
    return-void
.end method
