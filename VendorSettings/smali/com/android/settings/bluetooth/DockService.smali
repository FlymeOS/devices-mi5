.class public final Lcom/android/vendorsettings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/b/b/W;


# instance fields
.field private Qu:Lcom/android/b/b/Q;

.field private volatile RD:Landroid/os/Looper;

.field private volatile RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

.field private RF:Ljava/lang/Runnable;

.field private RG:Lcom/android/b/b/J;

.field private RH:[Lcom/android/b/b/T;

.field private RI:I

.field private RJ:Landroid/bluetooth/BluetoothDevice;

.field private RK:I

.field private RL:I

.field private RM:I

.field private RN:Landroid/widget/CheckBox;

.field private final RO:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private final RP:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final RQ:Landroid/content/DialogInterface$OnDismissListener;

.field private final RR:Landroid/content/DialogInterface$OnClickListener;

.field private Rt:Lcom/android/b/b/U;

.field private mCheckedItems:[Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    iput v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RL:I

    .line 129
    iput v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RM:I

    .line 569
    new-instance v0, Lcom/android/vendorsettings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/DockService$2;-><init>(Lcom/android/vendorsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RO:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 581
    new-instance v0, Lcom/android/vendorsettings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/DockService$3;-><init>(Lcom/android/vendorsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RP:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 599
    new-instance v0, Lcom/android/vendorsettings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/DockService$4;-><init>(Lcom/android/vendorsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RQ:Landroid/content/DialogInterface$OnDismissListener;

    .line 613
    new-instance v0, Lcom/android/vendorsettings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/bluetooth/DockService$5;-><init>(Lcom/android/vendorsettings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RR:Landroid/content/DialogInterface$OnClickListener;

    .line 930
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const/16 v1, 0x1bc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 336
    return-void
.end method

.method private declared-synchronized a(Landroid/bluetooth/BluetoothDevice;Lcom/android/b/b/T;I)V
    .locals 3

    .prologue
    .line 782
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 784
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_0

    .line 786
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 788
    if-eqz v1, :cond_0

    .line 789
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 791
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DockService;->f(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 794
    invoke-virtual {v0, p2}, Lcom/android/b/b/H;->d(Lcom/android/b/b/T;)V

    .line 800
    :cond_0
    invoke-static {p0, p3}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    monitor-exit p0

    return-void

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 694
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 695
    monitor-enter p0

    .line 697
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 698
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/bluetooth/DockService;->bm(I)V

    .line 724
    :cond_0
    :goto_0
    monitor-exit p0

    .line 725
    return-void

    .line 699
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 704
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 705
    invoke-static {p0, p2}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 706
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 711
    :try_start_1
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RM:I

    if-eq v0, v2, :cond_3

    .line 712
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RM:I

    invoke-static {p0, v0}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 713
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RM:I

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->enable()Z

    .line 719
    iput p2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RL:I

    goto :goto_0

    .line 721
    :cond_4
    invoke-static {p0, p2}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Landroid/os/Message;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->e(Landroid/bluetooth/BluetoothDevice;)V

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 349
    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const v3, 0x7f0c02a7

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 642
    packed-switch p2, :pswitch_data_0

    .line 652
    const/4 v0, 0x0

    .line 689
    :goto_0
    return-object v0

    :pswitch_0
    move v0, v1

    .line 655
    :goto_1
    new-array v2, v0, [Lcom/android/b/b/T;

    iput-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    .line 656
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    .line 657
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 660
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 679
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 680
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v2}, Lcom/android/b/b/U;->Ap()Lcom/android/b/b/a;

    move-result-object v2

    aput-object v2, v1, v4

    .line 681
    if-eqz p3, :cond_1

    .line 683
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v1, v4

    goto :goto_0

    .line 649
    :pswitch_2
    const/4 v0, 0x2

    .line 650
    goto :goto_1

    .line 662
    :pswitch_3
    const v2, 0x7f0c02a6

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 663
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 664
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v3}, Lcom/android/b/b/U;->Ar()Lcom/android/b/b/K;

    move-result-object v3

    aput-object v3, v2, v4

    .line 665
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v3}, Lcom/android/b/b/U;->Ap()Lcom/android/b/b/a;

    move-result-object v3

    aput-object v3, v2, v1

    .line 666
    if-eqz p3, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v1, v2, v4

    .line 669
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v1, v2, v1

    goto :goto_0

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/b/b/T;->h(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 672
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lcom/android/b/b/T;->h(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v1

    goto :goto_0

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    aget-object v2, v2, v4

    invoke-interface {v2, p1}, Lcom/android/b/b/T;->h(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    aput-boolean v2, v1, v4

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/bluetooth/DockService;)[Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 816
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 881
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 822
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-boolean v5, v3, v2

    .line 823
    if-eqz v5, :cond_3

    .line 824
    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v5}, Lcom/android/b/b/Q;->Ad()I

    move-result v5

    .line 830
    iget-object v6, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v6}, Lcom/android/b/b/Q;->enable()Z

    .line 833
    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    .line 834
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    :cond_2
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    .line 839
    iput p2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RK:I

    .line 840
    const/16 v0, 0xb

    if-eq v5, v0, :cond_0

    .line 841
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 822
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 849
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    .line 852
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->f(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v3

    move v2, v0

    .line 854
    :goto_2
    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 855
    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    aget-object v4, v4, v2

    .line 858
    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_6

    move v0, v1

    .line 869
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    invoke-interface {v4, p1, v5}, Lcom/android/b/b/T;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 861
    :cond_6
    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_5

    .line 863
    invoke-virtual {v3}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/b/b/T;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 864
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 866
    iget-object v5, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RH:[Lcom/android/b/b/T;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/android/b/b/H;->c(Lcom/android/b/b/T;)V

    goto :goto_3

    .line 877
    :cond_7
    if-eqz v0, :cond_0

    .line 879
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/android/b/b/H;->bP(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 381
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 382
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x22b

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 383
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    if-eqz p1, :cond_3

    .line 386
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->e(Landroid/bluetooth/BluetoothDevice;)V

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 397
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v1, p0}, Lcom/android/b/b/U;->a(Lcom/android/b/b/W;)V

    .line 398
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v1}, Lcom/android/b/b/U;->Ao()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    .line 401
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0, p0}, Lcom/android/b/b/U;->b(Lcom/android/b/b/W;)V

    .line 423
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 404
    :cond_2
    new-instance v1, Lcom/android/vendorsettings/bluetooth/DockService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/vendorsettings/bluetooth/DockService$1;-><init>(Lcom/android/vendorsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RF:Ljava/lang/Runnable;

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_audio_media_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 417
    if-ne v1, v3, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 419
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private bl(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v2}, Lcom/android/b/b/Q;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt_when_undock"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 321
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    iput p1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RM:I

    goto :goto_0
.end method

.method private bm(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, -0x64

    .line 728
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RK:I

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V

    .line 739
    :cond_0
    iput-object v5, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    .line 740
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RK:I

    invoke-static {p0, v0}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 767
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RL:I

    if-eq v0, v3, :cond_2

    .line 768
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RL:I

    invoke-static {p0, v0}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 769
    iput v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RL:I

    .line 772
    :cond_2
    invoke-static {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 773
    :goto_1
    return-void

    .line 742
    :cond_3
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 748
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 749
    if-eqz v1, :cond_1

    .line 750
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 752
    if-eqz v2, :cond_4

    .line 753
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 755
    if-eqz v0, :cond_1

    .line 756
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 758
    :cond_4
    const-string v1, "disable_bt"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->disable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iput p1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RM:I

    .line 761
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_bt"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private c(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 10

    .prologue
    const v6, 0x7f0c02a5

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    iput-object v8, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 496
    packed-switch p2, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 506
    :pswitch_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/vendorsettings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 512
    iput-object v8, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RN:Landroid/widget/CheckBox;

    .line 514
    if-eqz p1, :cond_4

    .line 516
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 519
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 521
    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 524
    iget-object v6, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v7, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RO:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    const v5, 0x7f04011b

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 528
    const v1, 0x7f130279

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 531
    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    :cond_1
    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 534
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RP:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v1, v5

    .line 553
    :goto_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 554
    mul-float v2, v9, v4

    float-to-int v2, v2

    .line 555
    mul-float/2addr v4, v9

    float-to-int v4, v4

    move v5, v3

    .line 556
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 559
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    iput p3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RI:I

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 563
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 564
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RQ:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 565
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 516
    goto :goto_1

    :cond_3
    move v4, v3

    .line 531
    goto :goto_2

    .line 540
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    const v2, 0x7f04006e

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 543
    const v1, 0x7f1300e3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RN:Landroid/widget/CheckBox;

    .line 546
    invoke-virtual {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dock_audio_media_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 549
    :goto_4
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RN:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 550
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RN:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RP:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v1, v2

    goto :goto_3

    :cond_5
    move v4, v3

    .line 546
    goto :goto_4

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/android/vendorsettings/bluetooth/DockService;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RI:I

    return v0
.end method

.method private declared-synchronized d(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 804
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->f(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v1

    .line 806
    invoke-virtual {v1}, Lcom/android/b/b/H;->zL()Ljava/util/List;

    move-result-object v0

    .line 807
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    .line 808
    invoke-interface {v0, p1}, Lcom/android/b/b/T;->i(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 809
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/b/b/H;->bP(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :cond_1
    monitor-exit p0

    return-void

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    .prologue
    .line 885
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 889
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :goto_0
    monitor-exit p0

    return-void

    .line 891
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 267
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 268
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 269
    const/4 v0, 0x0

    .line 270
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 271
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 277
    :goto_0
    const/4 v0, 0x0

    .line 279
    sparse-switch v2, :sswitch_data_0

    .line 303
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    const/16 v1, 0x14d

    if-eq v2, v1, :cond_1

    if-nez v0, :cond_1

    .line 307
    invoke-static {p0, v4}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_1
    monitor-exit p0

    return-void

    .line 281
    :sswitch_0
    if-eqz v1, :cond_0

    .line 282
    :try_start_1
    invoke-direct {p0, v1, v3, v4}, Lcom/android/vendorsettings/bluetooth/DockService;->c(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 287
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v3, v4}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    goto :goto_1

    .line 291
    :sswitch_2
    invoke-direct {p0, v1, v4}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    goto :goto_1

    .line 295
    :sswitch_3
    invoke-direct {p0, v1, v3, v4}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 299
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/android/vendorsettings/bluetooth/DockService;->bl(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic e(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RN:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private declared-synchronized e(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 896
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RF:Ljava/lang/Runnable;

    .line 897
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0, p0}, Lcom/android/b/b/U;->b(Lcom/android/b/b/W;)V

    .line 898
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 902
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RJ:Landroid/bluetooth/BluetoothDevice;

    .line 904
    if-eqz p1, :cond_1

    .line 905
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->f(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lcom/android/b/b/H;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :cond_1
    monitor-exit p0

    return-void

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RG:Lcom/android/b/b/J;

    invoke-virtual {v0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 912
    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RG:Lcom/android/b/b/J;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 915
    :cond_0
    return-object v0
.end method

.method private nR()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 187
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private u(Landroid/content/Intent;)Landroid/os/Message;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 449
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 450
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/16 v3, -0x4d2

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 458
    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 485
    :goto_0
    return-object v0

    .line 460
    :pswitch_0
    const/16 v1, 0x14d

    .line 485
    :goto_1
    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 465
    :pswitch_1
    if-nez v0, :cond_0

    .line 466
    const-string v0, "DockService"

    const-string v2, "device is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 467
    goto :goto_0

    .line 471
    :cond_0
    :pswitch_2
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    if-nez v0, :cond_1

    .line 473
    const-string v0, "DockService"

    const-string v2, "device is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 474
    goto :goto_0

    .line 476
    :cond_1
    const/16 v1, 0x6f

    goto :goto_1

    .line 478
    :cond_2
    const/16 v1, 0xde

    .line 480
    goto :goto_1

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RG:Lcom/android/b/b/J;

    invoke-virtual {v0}, Lcom/android/b/b/J;->zY()Ljava/util/Collection;

    move-result-object v0

    .line 428
    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v2}, Lcom/android/b/b/Q;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 445
    :goto_0
    monitor-exit p0

    return v0

    .line 437
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/H;

    .line 438
    invoke-virtual {v0}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 439
    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/b/b/H;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 445
    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/vendorsettings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    const-string v0, "DockService"

    const-string v1, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    .line 144
    invoke-virtual {v0}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RG:Lcom/android/b/b/J;

    .line 145
    invoke-virtual {v0}, Lcom/android/b/b/R;->Ak()Lcom/android/b/b/U;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    if-nez v0, :cond_1

    .line 147
    const-string v0, "DockService"

    const-string v1, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DockService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RD:Landroid/os/Looper;

    .line 155
    new-instance v0, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RD:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/vendorsettings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/vendorsettings/bluetooth/DockService$1;)V

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RF:Ljava/lang/Runnable;

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0, p0}, Lcom/android/b/b/U;->b(Lcom/android/b/b/W;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RD:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RD:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 173
    :cond_2
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Qu:Lcom/android/b/b/Q;

    .line 174
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RG:Lcom/android/b/b/J;

    .line 175
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    .line 176
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RD:Landroid/os/Looper;

    .line 177
    iput-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RE:Lcom/android/vendorsettings/bluetooth/DockService$ServiceHandler;

    .line 178
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 919
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RF:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RF:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->RF:Ljava/lang/Runnable;

    .line 922
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0, p0}, Lcom/android/b/b/U;->b(Lcom/android/b/b/W;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_0
    monitor-exit p0

    return-void

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 194
    if-nez p1, :cond_1

    .line 200
    invoke-static {p0, p3}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 250
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-direct {p0, p1, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/android/vendorsettings/bluetooth/DockService;->nR()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 214
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 217
    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 218
    if-ge v2, v5, :cond_0

    .line 219
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "connect_retry_count"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v1}, Lcom/android/b/b/U;->Ar()Lcom/android/b/b/K;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;Lcom/android/b/b/T;I)V

    goto :goto_0

    .line 223
    :cond_3
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 227
    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 228
    if-ge v2, v5, :cond_0

    .line 229
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "connect_retry_count"

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v1}, Lcom/android/b/b/U;->Ap()Lcom/android/b/b/a;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Landroid/bluetooth/BluetoothDevice;Lcom/android/b/b/T;I)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/bluetooth/DockService;->u(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    .line 236
    if-nez v0, :cond_5

    .line 239
    invoke-static {p0, p3}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 243
    :cond_5
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0xde

    if-ne v2, v3, :cond_6

    .line 244
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "connect_retry_count"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    :cond_6
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 248
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
