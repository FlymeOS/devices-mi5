.class Lcom/android/camera/ui/UIController$2;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/UIController;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    # getter for: Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;
    invoke-static {v0}, Lcom/android/camera/ui/UIController;->access$000(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    # getter for: Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;
    invoke-static {v0}, Lcom/android/camera/ui/UIController;->access$000(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->show()V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;
    invoke-static {v0, v1}, Lcom/android/camera/ui/UIController;->access$002(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    goto :goto_0
.end method
