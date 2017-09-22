.class Lcom/android/settings/wifi/aK;
.super Ljava/lang/Thread;
.source "WifiStatusTest.java"


# instance fields
.field final synthetic aEB:Lcom/android/settings/wifi/WifiStatusTest;

.field final synthetic yc:Landroid/os/Handler;

.field final synthetic yd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/wifi/aK;->aEB:Lcom/android/settings/wifi/WifiStatusTest;

    iput-object p2, p0, Lcom/android/settings/wifi/aK;->yc:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/wifi/aK;->yd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/wifi/aK;->aEB:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->s(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/aK;->yc:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/aK;->yd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method
