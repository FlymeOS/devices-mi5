.class final Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ZenAccessSettings.java"


# instance fields
.field final synthetic akB:Lcom/android/settings/notification/ZenAccessSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;)V
    .locals 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;->akB:Lcom/android/settings/notification/ZenAccessSettings;

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 171
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;->akB:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenAccessSettings;->b(Lcom/android/settings/notification/ZenAccessSettings;)V

    .line 176
    return-void
.end method
