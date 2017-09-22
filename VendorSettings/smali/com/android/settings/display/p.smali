.class Lcom/android/vendorsettings/display/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HandyModeGuideView.java"


# instance fields
.field final synthetic Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/display/HandyModeGuideView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vendorsettings/display/p;->Yy:Lcom/android/vendorsettings/display/HandyModeGuideView;

    new-instance v1, Lcom/android/vendorsettings/display/q;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/display/q;-><init>(Lcom/android/vendorsettings/display/p;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/display/HandyModeGuideView;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
