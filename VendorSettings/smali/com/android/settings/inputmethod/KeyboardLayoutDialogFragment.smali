.class public Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;
.super Landroid/app/DialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private agt:Landroid/hardware/input/InputDeviceIdentifier;

.field private agu:I

.field private agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

.field private vH:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    .line 65
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->rw()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->cn(I)V

    return-void
.end method

.method private cn(I)V
    .locals 3

    .prologue
    .line 160
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->vH:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 168
    :cond_1
    return-void
.end method

.method private rw()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {v0, v1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->b(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 151
    return-void
.end method

.method private rx()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 213
    if-eqz v0, :cond_0

    .line 216
    sget v1, Lmiui/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_0
    return-void

    .line 217
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Loader;Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 178
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget-object v1, p2, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->agx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->addAll(Ljava/util/Collection;)V

    .line 179
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget v1, p2, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->agy:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->co(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p2, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->agy:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->rx()V

    .line 185
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    const-string v0, "input"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->vH:Landroid/hardware/input/InputManager;

    .line 74
    new-instance v0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    .line 75
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v0, "inputDeviceIdentifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 86
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 98
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0622

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0623

    new-instance v3, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    const/4 v3, -0x1

    new-instance v4, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f040097

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->rx()V

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;

    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .prologue
    .line 199
    iget v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    if-ne p1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 202
    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    if-ne p1, v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 209
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->a(Landroid/content/Loader;Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agv:Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->clear()V

    .line 190
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->rx()V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->vH:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    .line 139
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->vH:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->vH:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agu:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "inputDeviceIdentifier"

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/KeyboardLayoutDialogFragment;->agt:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    return-void
.end method
