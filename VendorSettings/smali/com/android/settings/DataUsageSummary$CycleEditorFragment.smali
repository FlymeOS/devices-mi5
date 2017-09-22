.class public Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2089
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static A(Lcom/android/vendorsettings/DataUsageSummary;)V
    .locals 3

    .prologue
    .line 2093
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2102
    :goto_0
    return-void

    .line 2095
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2096
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/vendorsettings/DataUsageSummary;->y(Lcom/android/vendorsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2098
    new-instance v1, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;-><init>()V

    .line 2099
    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2100
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2101
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "cycleEditor"

    invoke-virtual {v1, v0, v2}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2106
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2107
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/DataUsageSummary;

    .line 2108
    invoke-static {v5}, Lcom/android/vendorsettings/DataUsageSummary;->z(Lcom/android/vendorsettings/DataUsageSummary;)Lcom/android/vendorsettings/d/f;

    move-result-object v3

    .line 2110
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2111
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2113
    const v1, 0x7f040056

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2114
    const v1, 0x7f1300a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2116
    invoke-virtual {p0}, Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2117
    invoke-virtual {v3, v4}, Lcom/android/vendorsettings/d/f;->e(Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 2119
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2120
    const/16 v7, 0x1f

    invoke-virtual {v2, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2121
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2122
    invoke-virtual {v2, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2124
    const v1, 0x7f0c08f4

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2125
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2127
    const v7, 0x7f0c08f6

    new-instance v0, Lcom/android/vendorsettings/bM;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/bM;-><init>(Lcom/android/vendorsettings/DataUsageSummary$CycleEditorFragment;Landroid/widget/NumberPicker;Lcom/android/vendorsettings/d/f;Landroid/net/NetworkTemplate;Lcom/android/vendorsettings/DataUsageSummary;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2141
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
