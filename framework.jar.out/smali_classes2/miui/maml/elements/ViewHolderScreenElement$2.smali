.class Lmiui/maml/elements/ViewHolderScreenElement$2;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ViewHolderScreenElement;->udpateView()V
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
    .line 115
    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$2;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lmiui/maml/elements/ViewHolderScreenElement$2;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    # getter for: Lmiui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z
    invoke-static {v1}, Lmiui/maml/elements/ViewHolderScreenElement;->access$000(Lmiui/maml/elements/ViewHolderScreenElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lmiui/maml/elements/ViewHolderScreenElement$2;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lmiui/maml/elements/ViewHolderScreenElement$2;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    .line 121
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
