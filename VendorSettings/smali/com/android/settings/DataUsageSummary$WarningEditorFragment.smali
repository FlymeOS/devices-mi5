.class public Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2148
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static A(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 3

    .prologue
    .line 2152
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2161
    :goto_0
    return-void

    .line 2154
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2155
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/vendorsettings/DataUsageSummary;->y(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2157
    new-instance v1, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 2158
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2159
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2160
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "warningEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 2165
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2166
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/DataUsageSummary;

    .line 2167
    invoke-static {v5}, Lcom/android/vendorsettings/DataUsageSummary;->z(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/f;

    move-result-object v3

    .line 2169
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2170
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2172
    const v1, 0x7f040054

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2173
    const v1, 0x7f13009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2175
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2176
    invoke-virtual {v3, v4}, Lcom/android/vendorsettings/d/f;->f(Landroid/net/NetworkTemplate;)J

    move-result-wide v8

    .line 2177
    invoke-virtual {v3, v4}, Lcom/android/vendorsettings/d/f;->g(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2179
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2180
    const-wide/16 v12, -0x1

    cmp-long v1, v10, v12

    if-eqz v1, :cond_0

    .line 2181
    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v1, v10

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2185
    :goto_0
    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10

    long-to-int v1, v8

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2186
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2188
    const v1, 0x7f0c08f7

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2189
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2191
    const v7, 0x7f0c08f6

    new-instance v0, Lcom/android/vendorsettings/bR;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/bR;-><init>(Lcom/android/vendorsettings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/vendorsettings/d/f;Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2204
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2183
    :cond_0
    const v1, 0x7fffffff

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method
