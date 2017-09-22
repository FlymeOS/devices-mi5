.class public Lcom/android/settings/location/RadioButtonPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "RadioButtonPreference.java"


# instance fields
.field private ahw:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->ahw:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->ahw:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    .line 50
    return-void
.end method


# virtual methods
.method a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/location/RadioButtonPreference;->ahw:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    .line 64
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 77
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->ahw:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/location/RadioButtonPreference;->ahw:Lcom/android/settings/location/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/location/RadioButtonPreference$OnClickListener;->b(Lcom/android/settings/location/RadioButtonPreference;)V

    .line 71
    :cond_0
    return-void
.end method
