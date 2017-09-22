.class Lcom/android/camera/ui/SubScreenPopup$1;
.super Ljava/lang/Object;
.source "SubScreenPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SubScreenPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SubScreenPopup;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # invokes: Lcom/android/camera/ui/SubScreenPopup;->computeTransY()I
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$200(Lcom/android/camera/ui/SubScreenPopup;)I

    move-result v1

    .line 50
    .local v1, "transY":I
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mCurrentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;
    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->access$000(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v3

    # invokes: Lcom/android/camera/ui/SubScreenPopup;->setTransY(Lcom/android/camera/ui/V6AbstractSettingPopup;I)V
    invoke-static {v2, v3, v1}, Lcom/android/camera/ui/SubScreenPopup;->access$300(Lcom/android/camera/ui/SubScreenPopup;Lcom/android/camera/ui/V6AbstractSettingPopup;I)V

    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v3

    # invokes: Lcom/android/camera/ui/SubScreenPopup;->setupAnimation(ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;
    invoke-static {v2, v1, v3}, Lcom/android/camera/ui/SubScreenPopup;->access$400(Lcom/android/camera/ui/SubScreenPopup;ILcom/android/camera/ui/SubScreenPopup$AnimationType;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 52
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # getter for: Lcom/android/camera/ui/SubScreenPopup;->mPendingAnimationType:Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    invoke-static {v3}, Lcom/android/camera/ui/SubScreenPopup;->access$100(Lcom/android/camera/ui/SubScreenPopup;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    move-result-object v3

    # invokes: Lcom/android/camera/ui/SubScreenPopup;->startAnimation(Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V
    invoke-static {v2, v0, v3}, Lcom/android/camera/ui/SubScreenPopup;->access$500(Lcom/android/camera/ui/SubScreenPopup;Landroid/animation/ValueAnimator;Lcom/android/camera/ui/SubScreenPopup$AnimationType;)V

    .line 54
    iget-object v2, p0, Lcom/android/camera/ui/SubScreenPopup$1;->this$0:Lcom/android/camera/ui/SubScreenPopup;

    # invokes: Lcom/android/camera/ui/SubScreenPopup;->removeOnPreDrawListener()Z
    invoke-static {v2}, Lcom/android/camera/ui/SubScreenPopup;->access$600(Lcom/android/camera/ui/SubScreenPopup;)Z

    .line 55
    const/4 v2, 0x0

    .line 57
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "transY":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
