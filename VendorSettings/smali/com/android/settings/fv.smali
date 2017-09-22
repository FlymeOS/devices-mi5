.class Lcom/android/vendorsettings/fv;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTetherSettings.java"


# instance fields
.field final synthetic ue:Lcom/android/vendorsettings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiTetherSettings;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "activeArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v4}, Lcom/android/vendorsettings/MiuiTetherSettings;->a(Lcom/android/vendorsettings/MiuiTetherSettings;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ge v2, v5, :cond_4

    aget-object v4, v4, v2

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 149
    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiTetherSettings;->b(Lcom/android/vendorsettings/MiuiTetherSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    :goto_2
    return-void

    .line 154
    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiTetherSettings;->c(Lcom/android/vendorsettings/MiuiTetherSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/MiuiTetherSettings;->b(Lcom/android/vendorsettings/MiuiTetherSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    :goto_3
    iget-object v0, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiTetherSettings;->a(Lcom/android/vendorsettings/MiuiTetherSettings;Z)V

    goto :goto_2

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiTetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/MiuiTetherSettings;->b(Lcom/android/vendorsettings/MiuiTetherSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/fv;->ue:Lcom/android/vendorsettings/MiuiTetherSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/MiuiTetherSettings;->d(Lcom/android/vendorsettings/MiuiTetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/MiuiTetherSettings;->a(Lcom/android/vendorsettings/MiuiTetherSettings;Z)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
