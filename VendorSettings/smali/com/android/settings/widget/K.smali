.class public Lcom/android/settings/widget/K;
.super Landroid/preference/CheckBoxPreference;
.source "TogglePreference.java"


# instance fields
.field private azF:Lcom/android/settings/widget/L;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/widget/L;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/K;->azF:Lcom/android/settings/widget/L;

    .line 33
    return-void
.end method

.method public bw(Z)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 46
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/widget/K;->azF:Lcom/android/settings/widget/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/K;->azF:Lcom/android/settings/widget/L;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/L;->a(Lcom/android/settings/widget/K;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
