.class Lcom/android/vendorsettings/wifi/aR;
.super Ljava/util/TimerTask;
.source "WpsDialog.java"


# instance fields
.field final synthetic aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/aR;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/aR;->aEJ:Lcom/android/vendorsettings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WpsDialog;->c(Lcom/android/vendorsettings/wifi/WpsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/wifi/aS;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/wifi/aS;-><init>(Lcom/android/vendorsettings/wifi/aR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
