.class final Lcom/android/server/power/PowerManagerServiceInjector$2;
.super Lcom/android/internal/app/IUidStateChangeCallback$Stub;
.source "PowerManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/internal/app/IUidStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChange(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .prologue
    .line 236
    if-lez p2, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->getScreenWakeLockHoldByUid(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->restoreScreenWakeLockDisabledState(I)V

    .line 239
    :cond_0
    return-void
.end method
