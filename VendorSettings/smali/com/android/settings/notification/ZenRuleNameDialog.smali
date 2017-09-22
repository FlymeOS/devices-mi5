.class public abstract Lcom/android/settings/notification/ZenRuleNameDialog;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final aiL:Lcom/android/settings/notification/ServiceListing;

.field private final akF:Lcom/android/settings/notification/ServiceListing$Callback;

.field private final alL:Landroid/view/View;

.field private final alM:Landroid/widget/RadioGroup;

.field private final alN:Landroid/content/res/ColorStateList;

.field private final alO:Landroid/content/res/ColorStateList;

.field private final alP:Ljava/lang/String;

.field private final alQ:Landroid/util/ArraySet;

.field private final alR:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

.field private final alS:Z

.field private final mDialog:Landroid/app/AlertDialog;

.field private final rb:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettings;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenRuleNameDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alR:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    .line 203
    new-instance v0, Lcom/android/settings/notification/ZenRuleNameDialog$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$4;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->akF:Lcom/android/settings/notification/ServiceListing$Callback;

    .line 64
    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->aiL:Lcom/android/settings/notification/ServiceListing;

    .line 65
    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alS:Z

    .line 66
    iput-object p3, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alP:Ljava/lang/String;

    .line 67
    const v0, 0x7f0e0054

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alN:Landroid/content/res/ColorStateList;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0401b4

    invoke-virtual {v0, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 69
    const v0, 0x7f13037d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f13037e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alL:Landroid/view/View;

    .line 71
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alS:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010435

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alO:Landroid/content/res/ColorStateList;

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 78
    const v0, 0x7f13037f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alM:Landroid/widget/RadioGroup;

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->aiL:Lcom/android/settings/notification/ServiceListing;

    if-eqz v0, :cond_2

    .line 80
    const v0, 0x7f130380

    invoke-static {}, Lcom/android/settings/notification/ZenRuleNameDialog;->sY()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(ILcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 81
    const v0, 0x7f130381

    invoke-static {}, Lcom/android/settings/notification/ZenRuleNameDialog;->sZ()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(ILcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->ta()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->aiL:Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->akF:Lcom/android/settings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->aiL:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->sy()Ljava/util/List;

    .line 88
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alS:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0c0a83

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a7

    new-instance v2, Lcom/android/settings/notification/ZenRuleNameDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$2;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenRuleNameDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a6

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/ZenRuleNameDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$3;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alQ:Landroid/util/ArraySet;

    .line 129
    invoke-virtual {p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alQ:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    move v0, v2

    .line 65
    goto/16 :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alM:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_3
    const v0, 0x7f0c0a80

    goto :goto_2

    .line 132
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ServiceListing;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->aiL:Lcom/android/settings/notification/ServiceListing;

    return-object v0
.end method

.method private a(ILcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alM:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 143
    if-nez p2, :cond_0

    .line 144
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 148
    iget-object v1, p2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alU:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p2, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ServiceListing$Callback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->akF:Lcom/android/settings/notification/ServiceListing$Callback;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->sW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/notification/ZenRuleNameDialog;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alS:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->sV()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->sX()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alR:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->ta()V

    return-void
.end method

.method private sV()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alM:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 156
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alM:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 158
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    goto :goto_0
.end method

.method private sW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sX()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->sW()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alP:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alQ:Landroid/util/ArraySet;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 170
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alL:Landroid/view/View;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->rb:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alN:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 174
    return-void

    :cond_1
    move v0, v2

    .line 167
    goto :goto_0

    :cond_2
    move v1, v2

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alO:Landroid/content/res/ColorStateList;

    goto :goto_3
.end method

.method private static sY()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 178
    sget-object v1, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 179
    const/16 v1, 0x16

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 180
    const/4 v1, 0x7

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 181
    new-instance v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 182
    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alV:Ljava/lang/String;

    .line 183
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alW:Landroid/net/Uri;

    .line 184
    return-object v1
.end method

.method private static sZ()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 190
    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 191
    new-instance v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 192
    const-string v2, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alV:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->alW:Landroid/net/Uri;

    .line 194
    return-object v1
.end method

.method private ta()V
    .locals 3

    .prologue
    .line 198
    const v0, 0x7f130382

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alR:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(ILcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 199
    const v0, 0x7f130383

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alR:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(ILcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 200
    const v0, 0x7f130384

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->alR:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(ILcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    .line 201
    return-void
.end method

.method static synthetic tb()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/settings/notification/ZenRuleNameDialog;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V
.end method

.method public show()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->sX()V

    .line 139
    return-void
.end method
