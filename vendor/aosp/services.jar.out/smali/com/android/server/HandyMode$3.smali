.class final Lcom/android/server/HandyMode$3;
.super Landroid/database/ContentObserver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 158
    # invokes: Lcom/android/server/HandyMode;->refreshStatus()V
    invoke-static {}, Lcom/android/server/HandyMode;->access$100()V

    .line 159
    return-void
.end method
