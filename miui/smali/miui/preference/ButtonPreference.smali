.class public Lmiui/preference/ButtonPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private Do:Ljava/lang/String;

.field private Dp:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/miui/internal/R$attr;->buttonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/preference/ButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method static synthetic a(Lmiui/preference/ButtonPreference;)Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmiui/preference/ButtonPreference;->Dp:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lmiui/preference/ButtonPreference$1;

    invoke-direct {v1, p0}, Lmiui/preference/ButtonPreference$1;-><init>(Lmiui/preference/ButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lmiui/preference/ButtonPreference;->Do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lmiui/preference/ButtonPreference;->Dp:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 89
    return-void
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lmiui/preference/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/ButtonPreference;->setText(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmiui/preference/ButtonPreference;->Do:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lmiui/preference/ButtonPreference;->notifyChanged()V

    .line 99
    return-void
.end method
