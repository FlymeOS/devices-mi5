.class Landroid/widget/ToastInjector;
.super Ljava/lang/Object;
.source "ToastInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static interceptBackgroundToast(Landroid/widget/Toast;Landroid/content/Context;)Z
    .locals 1
    .param p0, "toast"    # Landroid/widget/Toast;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
