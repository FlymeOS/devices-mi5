.class Lcom/android/settings/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic DS:Lcom/android/settings/accounts/AccountSettings;

.field private final DT:Ljava/lang/String;

.field private final DU:I

.field private final DV:Ljava/lang/String;

.field private final DW:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DS:Lcom/android/settings/accounts/AccountSettings;

    .line 501
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 502
    iput-object p3, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 503
    iput-object p4, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DT:Ljava/lang/String;

    .line 504
    iput p5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DU:I

    .line 505
    iput-object p6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DV:Ljava/lang/String;

    .line 506
    iput-object p7, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DW:Landroid/os/Bundle;

    .line 507
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    .line 509
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p0, p8}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 512
    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 513
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DV:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DV:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DW:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->DT:Ljava/lang/String;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/settings/iC;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    .line 524
    const/4 v4, 0x1

    .line 526
    :cond_0
    return v4
.end method
