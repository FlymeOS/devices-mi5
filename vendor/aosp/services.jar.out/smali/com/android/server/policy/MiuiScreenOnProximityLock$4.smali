.class Lcom/android/server/policy/MiuiScreenOnProximityLock$4;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field final synthetic val$container:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 214
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # getter for: Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$400(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 209
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 200
    return-void
.end method
