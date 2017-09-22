.class Lcom/android/settings/notification/AppNotificationSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic aiI:Lcom/android/settings/notification/AppNotificationSettings;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->aiI:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 162
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->aiI:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x93

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->val$pkg:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->aiI:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/AppNotificationSettings;->b(Lcom/android/settings/notification/AppNotificationSettings;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->aiI:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v3}, Lcom/android/settings/notification/AppNotificationSettings;->a(Lcom/android/settings/notification/AppNotificationSettings;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->a(Ljava/lang/String;IZ)Z

    move-result v1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->aiI:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v2, v0}, Lcom/android/settings/notification/AppNotificationSettings;->a(Lcom/android/settings/notification/AppNotificationSettings;Z)V

    .line 170
    :cond_1
    return v1
.end method
