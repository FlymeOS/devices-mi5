.class Lcom/android/camera/ui/ModeGridView$2;
.super Ljava/lang/Object;
.source "ModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeGridView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeGridView;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x19

    .line 786
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->moveY:I
    invoke-static {v2}, Lcom/android/camera/ui/ModeGridView;->access$700(Lcom/android/camera/ui/ModeGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$800(Lcom/android/camera/ui/ModeGridView;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 787
    const/16 v0, -0x50

    .line 788
    .local v0, "scrollY":I
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/ui/ModeGridView;->access$1000(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$900(Lcom/android/camera/ui/ModeGridView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 799
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->moveX:I
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$1200(Lcom/android/camera/ui/ModeGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->moveY:I
    invoke-static {v4}, Lcom/android/camera/ui/ModeGridView;->access$700(Lcom/android/camera/ui/ModeGridView;)I

    move-result v4

    # invokes: Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V
    invoke-static {v2, v3, v4}, Lcom/android/camera/ui/ModeGridView;->access$1300(Lcom/android/camera/ui/ModeGridView;II)V

    .line 801
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mDragPosition:I
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$1400(Lcom/android/camera/ui/ModeGridView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # invokes: Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I
    invoke-static {v4}, Lcom/android/camera/ui/ModeGridView;->access$1500(Lcom/android/camera/ui/ModeGridView;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 803
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    iget-object v2, v2, Lcom/android/camera/ui/ModeGridView;->mParent:Lcom/android/camera/ui/ScreenView;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$1600(Lcom/android/camera/ui/ModeGridView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 805
    return-void

    .line 789
    .end local v0    # "scrollY":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->moveY:I
    invoke-static {v2}, Lcom/android/camera/ui/ModeGridView;->access$700(Lcom/android/camera/ui/ModeGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$1100(Lcom/android/camera/ui/ModeGridView;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 790
    const/16 v0, 0x50

    .line 791
    .restart local v0    # "scrollY":I
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/ui/ModeGridView;->access$1000(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$900(Lcom/android/camera/ui/ModeGridView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 793
    .end local v0    # "scrollY":I
    :cond_1
    const/4 v0, 0x0

    .line 794
    .restart local v0    # "scrollY":I
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/ui/ModeGridView;->access$1000(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView$2;->this$0:Lcom/android/camera/ui/ModeGridView;

    # getter for: Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/ui/ModeGridView;->access$900(Lcom/android/camera/ui/ModeGridView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
