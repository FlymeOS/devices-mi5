.class Lcom/android/vendorsettings/fN;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAppListSettings.java"


# instance fields
.field final synthetic vg:Lcom/android/vendorsettings/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/NotificationAppListSettings;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/vendorsettings/fN;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/fN;->vg:Lcom/android/vendorsettings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/NotificationAppListSettings;->a(Lcom/android/vendorsettings/NotificationAppListSettings;)V

    .line 139
    return-void
.end method
