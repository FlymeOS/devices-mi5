.class final Lcom/android/vendorsettings/bluetooth/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/b/b/S;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/android/b/b/R;)V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p2}, Lcom/android/b/b/R;->Aj()Lcom/android/b/b/t;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;

    invoke-direct {v1, p1}, Lcom/android/vendorsettings/bluetooth/DockService$DockBluetoothCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/b/b/t;->a(Lcom/android/b/b/g;)V

    .line 145
    invoke-static {}, Lcom/android/vendorsettings/bluetooth/Utils;->ob()Lcom/android/b/b/aj;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/b/ai;->a(Lcom/android/b/b/aj;)V

    .line 146
    return-void
.end method
