.class public Lcom/android/settings/analytics/ObserverService;
.super Landroid/app/Service;
.source "ObserverService.java"


# static fields
.field private static final ES:Landroid/net/Uri;

.field private static final ET:Landroid/net/Uri;


# instance fields
.field private wd:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/analytics/ObserverService;->ES:Landroid/net/Uri;

    .line 18
    const-string v0, "drive_mode_drive_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/analytics/ObserverService;->ET:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Lcom/android/settings/analytics/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/analytics/b;-><init>(Lcom/android/settings/analytics/ObserverService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/analytics/ObserverService;->wd:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic jx()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/settings/analytics/ObserverService;->ES:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic jy()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/settings/analytics/ObserverService;->ET:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/analytics/ObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/analytics/ObserverService;->ES:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/analytics/ObserverService;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/analytics/ObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/analytics/ObserverService;->ET:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/analytics/ObserverService;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/analytics/ObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/analytics/ObserverService;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method
