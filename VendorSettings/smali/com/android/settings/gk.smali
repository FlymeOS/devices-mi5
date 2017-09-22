.class public Lcom/android/vendorsettings/gk;
.super Lcom/android/vendorsettings/gl;
.source "ProgressCategory.java"


# instance fields
.field private vY:I

.field private vZ:Z

.field private wa:Landroid/preference/Preference;

.field private wb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/gk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/gl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v0, p0, Lcom/android/vendorsettings/gk;->vZ:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vendorsettings/gk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vendorsettings/gl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/gk;->vZ:Z

    .line 49
    const v0, 0x7f0400e6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/gk;->setLayoutResource(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public Q(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/vendorsettings/gk;->vZ:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/vendorsettings/gk;->notifyChanged()V

    .line 88
    return-void
.end method

.method public ab(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/vendorsettings/gk;->vY:I

    .line 54
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/vendorsettings/gl;->onBindView(Landroid/view/View;)V

    .line 59
    const v0, 0x7f1301c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/gk;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/gk;->getPreferenceCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/gk;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    .line 63
    :goto_0
    iget-boolean v3, p0, Lcom/android/vendorsettings/gk;->vZ:Z

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-boolean v3, p0, Lcom/android/vendorsettings/gk;->vZ:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_5

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/gk;->wb:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/gk;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    iput-boolean v1, p0, Lcom/android/vendorsettings/gk;->wb:Z

    .line 82
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    .line 71
    :cond_5
    iget-boolean v0, p0, Lcom/android/vendorsettings/gk;->wb:Z

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 73
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/gk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    .line 74
    iget-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    const v3, 0x7f0400d9

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    iget v3, p0, Lcom/android/vendorsettings/gk;->vY:I

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/android/vendorsettings/gk;->wa:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/gk;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    iput-boolean v2, p0, Lcom/android/vendorsettings/gk;->wb:Z

    goto :goto_2
.end method
