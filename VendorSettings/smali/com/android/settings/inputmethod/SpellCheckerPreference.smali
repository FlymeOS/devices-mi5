.class Lcom/android/settings/inputmethod/SpellCheckerPreference;
.super Landroid/preference/Preference;
.source "SpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final agB:Landroid/view/textservice/SpellCheckerInfo;

.field private final agC:Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

.field private agD:Landroid/widget/RadioButton;

.field private agE:Landroid/view/View;

.field private agF:Landroid/view/View;

.field private agG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setPersistent(Z)V

    .line 66
    const v0, 0x7f0400ec

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setLayoutResource(I)V

    .line 67
    const v0, 0x7f0400ed

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setWidgetLayoutResource(I)V

    .line 68
    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agB:Landroid/view/textservice/SpellCheckerInfo;

    .line 69
    iput-object p3, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agC:Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

    .line 70
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setKey(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agB:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setIntent(Landroid/content/Intent;)V

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agB:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private aT(Z)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agD:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agD:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->aU(Z)V

    .line 134
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aU(Z)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private rA()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    const v1, 0x7f0c061c

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agB:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 85
    const v0, 0x7f1301ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agD:Landroid/widget/RadioButton;

    .line 86
    const v0, 0x7f1301c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agE:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agE:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f1301cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agG:Z

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->aT(Z)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agE:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agC:Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;->a(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agF:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->rA()V

    goto :goto_0
.end method

.method public rB()Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agB:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->agG:Z

    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->aT(Z)V

    .line 127
    return-void
.end method
