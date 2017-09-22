.class Lcom/android/vendorsettings/wfd/u;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final awC:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/u;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    .line 680
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 682
    iput-object p3, p0, Lcom/android/vendorsettings/wfd/u;->awC:Landroid/media/MediaRouter$RouteInfo;

    .line 683
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setTitle(Ljava/lang/CharSequence;)V

    .line 684
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setEnabled(Z)V

    .line 686
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setOrder(I)V

    .line 688
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const v0, 0x7f0c02ad

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setSummary(I)V

    .line 705
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/vendorsettings/wfd/u;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 706
    return-void

    .line 691
    :cond_0
    const v0, 0x7f0c02ae

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setSummary(I)V

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/wfd/u;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 695
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setOrder(I)V

    goto :goto_0

    .line 697
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setOrder(I)V

    .line 698
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 699
    const v0, 0x7f0c02af

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setSummary(I)V

    goto :goto_0

    .line 701
    :cond_3
    const v0, 0x7f0c02b0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/u;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/u;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/u;->awC:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 711
    const/4 v0, 0x1

    return v0
.end method
