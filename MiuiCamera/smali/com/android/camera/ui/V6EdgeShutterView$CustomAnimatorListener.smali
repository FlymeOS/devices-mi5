.class Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V6EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EdgeShutterView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;
    .param p2, "x1"    # Lcom/android/camera/ui/V6EdgeShutterView$1;

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 312
    const-string v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCancel animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->access$502(Lcom/android/camera/ui/V6EdgeShutterView;I)I

    .line 314
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x4

    .line 293
    const-string v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->access$400(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->access$500(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # invokes: Lcom/android/camera/ui/V6EdgeShutterView;->setRelateVisible(I)V
    invoke-static {v0, v3}, Lcom/android/camera/ui/V6EdgeShutterView;->access$600(Lcom/android/camera/ui/V6EdgeShutterView;I)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # setter for: Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I
    invoke-static {v0, v3}, Lcom/android/camera/ui/V6EdgeShutterView;->access$502(Lcom/android/camera/ui/V6EdgeShutterView;I)I

    .line 300
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EdgeShutterView;->access$800(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    .line 301
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->access$700(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->access$500(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->access$502(Lcom/android/camera/ui/V6EdgeShutterView;I)I

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->access$900(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    # getter for: Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EdgeShutterView;->access$1000(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    .line 308
    :cond_0
    return-void
.end method
