.class public Lcom/android/vendorsettings/applications/ProcessStatsSummary;
.super Lcom/android/vendorsettings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private Ix:Lcom/android/vendorsettings/applications/LayoutPreference;

.field private Mk:Lcom/android/vendorsettings/applications/LinearColorBar;

.field private Ml:Landroid/widget/TextView;

.field private Mm:Landroid/preference/Preference;

.field private Mn:Landroid/preference/Preference;

.field private Mo:Landroid/preference/Preference;

.field private Mp:Landroid/preference/Preference;

.field private Mq:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ld()V
    .locals 15

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    const v1, 0x7f0e0041

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mk:Lcom/android/vendorsettings/applications/LinearColorBar;

    const v3, 0x7f0e0042

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v1, v1, v3}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(III)V

    .line 80
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->IM:Lcom/android/vendorsettings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/ProcStatsData;->la()Lcom/android/vendorsettings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    .line 82
    iget-wide v2, v1, Lcom/android/vendorsettings/applications/ProcStatsData$MemInfo;->Lj:D

    .line 83
    iget-wide v4, v1, Lcom/android/vendorsettings/applications/ProcStatsData$MemInfo;->Ll:D

    .line 84
    iget-wide v6, v1, Lcom/android/vendorsettings/applications/ProcStatsData$MemInfo;->Lk:D

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    double-to-long v8, v2

    const/4 v10, 0x1

    invoke-static {v1, v8, v9, v10}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 87
    double-to-long v8, v4

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 88
    double-to-long v10, v6

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0a0064

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    iget-object v10, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->IM:Lcom/android/vendorsettings/applications/ProcStatsData;

    invoke-virtual {v10}, Lcom/android/vendorsettings/applications/ProcStatsData;->kZ()I

    move-result v10

    .line 92
    if-ltz v10, :cond_0

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_0

    .line 93
    aget-object v0, v0, v10

    .line 97
    :goto_0
    iget-object v10, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Ml:Landroid/widget/TextView;

    const v11, 0x7f0c0464

    invoke-virtual {p0, v11}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    iget-object v14, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v1, v12, v13

    invoke-static {v11, v12}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    add-double/2addr v6, v2

    div-double v6, v2, v6

    double-to-float v1, v6

    .line 100
    iget-object v6, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mk:Lcom/android/vendorsettings/applications/LinearColorBar;

    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v1

    invoke-virtual {v6, v1, v7, v10}, Lcom/android/vendorsettings/applications/LinearColorBar;->a(FFF)V

    .line 102
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mm:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mn:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mo:Landroid/preference/Preference;

    double-to-long v2, v2

    double-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/vendorsettings/iC;->a(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mp:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    sget-object v0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->LI:[I

    iget v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->LL:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->IM:Lcom/android/vendorsettings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/ProcStatsData;->lb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 108
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mq:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110013

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    return-void

    .line 95
    :cond_0
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-object v0, v0, v10

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/vendorsettings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 62
    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Ix:Lcom/android/vendorsettings/applications/LayoutPreference;

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Ix:Lcom/android/vendorsettings/applications/LayoutPreference;

    const v1, 0x7f1301f6

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Ml:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Ix:Lcom/android/vendorsettings/applications/LayoutPreference;

    const v1, 0x7f1301f7

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mk:Lcom/android/vendorsettings/applications/LinearColorBar;

    .line 66
    const-string v0, "performance"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mm:Landroid/preference/Preference;

    .line 67
    const-string v0, "total_memory"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mn:Landroid/preference/Preference;

    .line 68
    const-string v0, "average_used"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mo:Landroid/preference/Preference;

    .line 69
    const-string v0, "free"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mp:Landroid/preference/Preference;

    .line 70
    const-string v0, "apps_list"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mq:Landroid/preference/Preference;

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mq:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->Mq:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 120
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v0, "transfer_stats"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "duration_index"

    iget v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->LL:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->IM:Lcom/android/vendorsettings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ProcStatsData;->kY()V

    .line 124
    const-class v0, Lcom/android/vendorsettings/applications/ProcessStatsUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0b54

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/applications/ProcessStatsSummary;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    move v4, v6

    .line 128
    :cond_0
    return v4
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xca

    return v0
.end method
