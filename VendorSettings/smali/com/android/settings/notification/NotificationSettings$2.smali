.class Lcom/android/vendorsettings/notification/NotificationSettings$2;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic ajD:Lcom/android/vendorsettings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/vendorsettings/notification/NotificationSettings$2;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 400
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/vendorsettings/notification/NotificationSettings$2;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/notification/NotificationSettings;->e(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
