.class Lcom/android/vendorsettings/widget/B;
.super Landroid/database/ContentObserver;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 938
    iput-object p2, p0, Lcom/android/vendorsettings/widget/B;->mContext:Landroid/content/Context;

    .line 939
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/vendorsettings/widget/B;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cq(Landroid/content/Context;)V

    .line 957
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/vendorsettings/widget/B;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 952
    return-void
.end method

.method wM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 942
    iget-object v0, p0, Lcom/android/vendorsettings/widget/B;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 944
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 946
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 948
    return-void
.end method
