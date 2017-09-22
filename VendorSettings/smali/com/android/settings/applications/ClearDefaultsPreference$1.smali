.class Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;
.super Ljava/lang/Object;
.source "ClearDefaultsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->a(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->c(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->b(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->a(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->b(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->d(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->b(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->e(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f13002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ClearDefaultsPreference$1;->Id:Lcom/android/vendorsettings/applications/ClearDefaultsPreference;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->a(Lcom/android/vendorsettings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V

    .line 106
    :cond_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v1, Lcom/android/vendorsettings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    const-string v2, "mUsbManager.clearDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
