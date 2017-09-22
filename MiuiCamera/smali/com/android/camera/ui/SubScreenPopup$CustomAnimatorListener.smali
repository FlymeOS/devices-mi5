.class Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SubScreenPopup.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field private mIsValueVisible:Z

.field private mLayerType:I

.field private mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field final synthetic this$0:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SubScreenPopup;)V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/SubScreenPopup;ZLcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/SubScreenPopup;ZLcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0
    .param p2, "isValueVisible"    # Z
    .param p3, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 283
    iput-boolean p2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mIsValueVisible:Z

    .line 284
    iput-object p3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 285
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 306
    const-string v0, "V6ManualPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationCancel: animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 311
    sget-object v1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 312
    .local v0, "slideDown":Z
    :goto_0
    const-string v1, "V6ManualPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",animation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",popup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$800(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # setter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v1, v6}, Lcom/android/camera/ui/SubScreenPopup;->access$002(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;
    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 321
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$800(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 322
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/SubScreenPopup;->access$800(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 324
    iget-object v1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/ui/SubScreenPopup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 325
    return-void

    .line 311
    .end local v0    # "slideDown":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x2

    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/SubScreenPopup;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    .line 330
    iget v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    if-eq v0, v2, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/SubScreenPopup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 333
    :cond_0
    const-string v0, "V6ManualPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart: layerType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mLayerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",popup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 298
    .local v1, "transY":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float v0, v2, v3

    .line 299
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mExitView:Lcom/android/camera/ui/V6ModeExitView;
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$700(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 300
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$800(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 301
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mValueBottomLine:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$800(Lcom/android/camera/ui/SubScreenPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 302
    return-void
.end method

.method public setAnimationType(Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    .locals 0
    .param p1, "type"    # Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$CustomAnimatorListener;->mType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 293
    return-void
.end method
