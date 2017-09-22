.class Lcom/android/vendorsettings/applications/PreferredListSettings$1;
.super Ljava/lang/Object;
.source "PreferredListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic KR:Lcom/android/vendorsettings/applications/PreferredListSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/PreferredListSettings;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/PreferredListSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    move v1, v2

    .line 284
    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 285
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 288
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-static {v5}, Lcom/android/vendorsettings/applications/PreferredListSettings;->a(Lcom/android/vendorsettings/applications/PreferredListSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_1
    const/4 v4, 0x3

    if-ne v4, v1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/PreferredListSettings;->b(Lcom/android/vendorsettings/applications/PreferredListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.android.browser"

    iget-object v5, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-virtual {v5}, Lcom/android/vendorsettings/applications/PreferredListSettings;->getUserId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    goto :goto_1

    .line 297
    :cond_2
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "preferred_app_package_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "preferred_app_intent_filter"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 299
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/PreferredListSettings;->b(Lcom/android/vendorsettings/applications/PreferredListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_1

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->setDefaultDialer(Ljava/lang/String;)Z

    .line 306
    const-string v0, "com.android.mms"

    iget-object v1, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 307
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredListSettings$1;->KR:Lcom/android/vendorsettings/applications/PreferredListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/PreferredListSettings;->c(Lcom/android/vendorsettings/applications/PreferredListSettings;)V

    .line 308
    return-void
.end method
