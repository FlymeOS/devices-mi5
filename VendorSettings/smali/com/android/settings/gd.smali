.class Lcom/android/vendorsettings/gd;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# instance fields
.field final synthetic vN:Lcom/android/vendorsettings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/vendorsettings/gd;->vN:Lcom/android/vendorsettings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/gd;->vN:Lcom/android/vendorsettings/PointerSpeedPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/PointerSpeedPreference;->a(Lcom/android/vendorsettings/PointerSpeedPreference;)V

    .line 48
    return-void
.end method
