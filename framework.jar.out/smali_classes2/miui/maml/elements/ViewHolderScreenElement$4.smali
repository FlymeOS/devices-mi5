.class Lmiui/maml/elements/ViewHolderScreenElement$4;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ViewHolderScreenElement;->finishView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ViewHolderScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$4;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$4;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iget-object v2, v2, Lmiui/maml/elements/ViewHolderScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v1

    .line 181
    .local v1, "vm":Landroid/view/ViewManager;
    if-eqz v1, :cond_0

    .line 182
    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$4;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "v":Landroid/view/View;
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 184
    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$4;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    const/4 v3, 0x0

    # setter for: Lmiui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z
    invoke-static {v2, v3}, Lmiui/maml/elements/ViewHolderScreenElement;->access$002(Lmiui/maml/elements/ViewHolderScreenElement;Z)Z

    .line 185
    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$4;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v2, v0}, Lmiui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 187
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
