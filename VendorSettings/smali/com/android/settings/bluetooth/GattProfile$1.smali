.class Lcom/android/settings/bluetooth/GattProfile$1;
.super Landroid/database/ContentObserver;
.source "GattProfile.java"


# instance fields
.field final synthetic RZ:Lcom/android/settings/bluetooth/GattProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/GattProfile;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/bluetooth/GattProfile$1;->RZ:Lcom/android/settings/bluetooth/GattProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/GattProfile$1;->RZ:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->nS()V

    .line 62
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 63
    return-void
.end method
