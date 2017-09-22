.class public Lcom/android/vendorsettings/print/PrintJobSettingsFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# instance fields
.field private alZ:Landroid/graphics/drawable/Drawable;

.field private final ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private amb:Landroid/print/PrintManager;

.field private amc:Landroid/preference/Preference;

.field private amd:Landroid/preference/Preference;

.field private ame:Landroid/print/PrintJobId;

.field private amf:Landroid/print/PrintJob;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/vendorsettings/print/a;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/print/a;-><init>(Lcom/android/vendorsettings/print/PrintJobSettingsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/print/PrintJobSettingsFragment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->aB()V

    return-void
.end method

.method private aB()V
    .locals 11

    .prologue
    const v3, 0x7f0c06fe

    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->td()Landroid/print/PrintJob;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->finish()V

    .line 261
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v6

    .line 203
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 231
    :goto_1
    :pswitch_0
    iget-object v7, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    const v8, 0x7f0c06fc

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v5

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 248
    :goto_2
    :pswitch_1
    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getStateReason()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 250
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "print_job_message_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amd:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amd:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    const v1, 0x7f0c06fd

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    const v1, 0x7f0c06ff

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 221
    :pswitch_4
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    const v1, 0x7f0c0700

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v3, v1}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 239
    :pswitch_5
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 244
    :pswitch_6
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 256
    :cond_6
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amd:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->alZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private tc()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->ame:Landroid/print/PrintJobId;

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->ame:Landroid/print/PrintJobId;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->finish()V

    .line 179
    :cond_0
    return-void
.end method

.method private td()Landroid/print/PrintJob;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amf:Landroid/print/PrintJob;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amb:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->ame:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amf:Landroid/print/PrintJob;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amf:Landroid/print/PrintJob;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->addPreferencesFromResource(I)V

    .line 86
    const-string v0, "print_job_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amc:Landroid/preference/Preference;

    .line 87
    const-string v0, "print_job_message_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amd:Landroid/preference/Preference;

    .line 89
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amb:Landroid/print/PrintManager;

    .line 97
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->tc()V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->setHasOptionsMenu(Z)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->td()Landroid/print/PrintJob;

    move-result-object v0

    .line 137
    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    const v1, 0x7f0c06fb

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 144
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/print/PrintJob;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x2

    const v1, 0x7f0c06fa

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->td()Landroid/print/PrintJob;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJob;->cancel()V

    .line 159
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->td()Landroid/print/PrintJob;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJob;->restart()V

    .line 165
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->finish()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amb:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->amb:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->ama:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->aB()V

    .line 123
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onStart()V

    .line 113
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c06f9

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    .line 114
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/vendorsettings/print/PrintJobSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 106
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x4e

    return v0
.end method
