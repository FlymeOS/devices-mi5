.class Lmiui/maml/elements/ViewHolderScreenElement$5;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ViewHolderScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ViewHolderScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;Z)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$5;->val$_v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
