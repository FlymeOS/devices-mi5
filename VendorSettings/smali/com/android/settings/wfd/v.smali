.class Lcom/android/settings/wfd/v;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final awD:Landroid/hardware/display/WifiDisplay;

.field final synthetic awy:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/settings/wfd/v;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 755
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 757
    iput-object p3, p0, Lcom/android/settings/wfd/v;->awD:Landroid/hardware/display/WifiDisplay;

    .line 758
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/v;->setTitle(Ljava/lang/CharSequence;)V

    .line 761
    const v0, 0x11070047

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/v;->setSummary(I)V

    .line 762
    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/v;->setEnabled(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/wfd/v;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/v;->setOrder(I)V

    .line 769
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/v;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 770
    return-void

    .line 766
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/v;->setOrder(I)V

    .line 767
    const v0, 0x7f0c02af

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/v;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/settings/wfd/v;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/v;->awD:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->b(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 775
    const/4 v0, 0x1

    return v0
.end method
