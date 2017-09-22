.class public Lcom/android/vendorsettings/vpn2/ConfigPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "ConfigPreference.java"


# instance fields
.field private avA:Landroid/view/View$OnClickListener;

.field private avB:Landroid/view/View$OnClickListener;

.field private avh:Lcom/android/internal/net/VpnProfile;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p3}, Lcom/android/vendorsettings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 53
    iput-object p2, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avB:Landroid/view/View$OnClickListener;

    .line 55
    invoke-virtual {p0, p3}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->c(Lcom/android/internal/net/VpnProfile;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    .line 61
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setWidgetLayoutResource(I)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setPersistent(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setOrder(I)V

    .line 65
    iput-object p2, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->update()V

    .line 67
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avA:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method

.method public c(Lcom/android/internal/net/VpnProfile;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    .line 101
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->update()V

    .line 102
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 127
    instance-of v0, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    if-eqz v0, :cond_1

    .line 128
    check-cast p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;

    .line 130
    iget v0, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    iget v1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget v0, v0, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v1, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v0, p1, Lcom/android/vendorsettings/vpn2/AppPreference;

    if-eqz v0, :cond_3

    .line 138
    check-cast p1, Lcom/android/vendorsettings/vpn2/AppPreference;

    .line 139
    iget v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/vendorsettings/vpn2/AppPreference;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 145
    :cond_3
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    const v0, 0x7f1301db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->update()V

    .line 107
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    if-gez v0, :cond_0

    .line 113
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->notifyHierarchyChanged()V

    .line 123
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->mState:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public vH()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/ConfigPreference;->avh:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method
