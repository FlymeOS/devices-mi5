.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_appTransitionCancelled:I = 0x22

.field static final TRANSACTION_appTransitionPending:I = 0x21

.field static final TRANSACTION_appTransitionStarting:I = 0x23

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x20

.field static final TRANSACTION_clearNotificationEffects:I = 0x12

.field static final TRANSACTION_collapsePanels:I = 0x3

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disable2:I = 0x6

.field static final TRANSACTION_disable2ForUser:I = 0x7

.field static final TRANSACTION_disableForUser:I = 0x5

.field static final TRANSACTION_expandNotificationsPanel:I = 0x2

.field static final TRANSACTION_expandSettingsPanel:I = 0xd

.field static final TRANSACTION_hideRecentApps:I = 0x1d

.field static final TRANSACTION_onClearAllNotifications:I = 0x16

.field static final TRANSACTION_onNotificationActionClick:I = 0x14

.field static final TRANSACTION_onNotificationClear:I = 0x17

.field static final TRANSACTION_onNotificationClick:I = 0x13

.field static final TRANSACTION_onNotificationError:I = 0x15

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x19

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x18

.field static final TRANSACTION_onPanelHidden:I = 0x11

.field static final TRANSACTION_onPanelRevealed:I = 0x10

.field static final TRANSACTION_preloadRecentApps:I = 0x1f

.field static final TRANSACTION_registerStatusBar:I = 0xf

.field static final TRANSACTION_removeIcon:I = 0xa

.field static final TRANSACTION_setCurrentUser:I = 0xe

.field static final TRANSACTION_setIcon:I = 0x8

.field static final TRANSACTION_setIconVisibility:I = 0x9

.field static final TRANSACTION_setImeWindowStatus:I = 0xc

.field static final TRANSACTION_setStatus:I = 0x1

.field static final TRANSACTION_setSystemUiVisibility:I = 0x1a

.field static final TRANSACTION_setWindowState:I = 0x1b

.field static final TRANSACTION_showRecentApps:I = 0x1c

.field static final TRANSACTION_startAssist:I = 0x24

.field static final TRANSACTION_toggleRecentApps:I = 0x1e

.field static final TRANSACTION_topAppWindowChanged:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 462
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 54
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 62
    .local v6, "_arg3":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    .end local v6    # "_arg3":Landroid/os/Bundle;
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Landroid/os/Bundle;
    goto :goto_1

    .line 68
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    :sswitch_3
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 86
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 88
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v2, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 101
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 104
    .local v6, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :sswitch_6
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 116
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 123
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 129
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 132
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 138
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    :sswitch_8
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 146
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 148
    .restart local v6    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg4":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 149
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 155
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    :sswitch_9
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 160
    .local v4, "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 159
    .end local v4    # "_arg1":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 166
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 175
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 178
    .local v3, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 177
    .end local v3    # "_arg0":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 184
    :sswitch_c
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 188
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 190
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 192
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    .line 193
    .local v6, "_arg3":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 192
    .end local v6    # "_arg3":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 199
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :sswitch_d
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 206
    :sswitch_e
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    .end local v3    # "_arg0":I
    :sswitch_f
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v3

    .line 219
    .local v3, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v4}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 221
    .local v4, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 222
    .local v14, "_arg2_length":I
    if-gez v14, :cond_4

    .line 223
    const/4 v5, 0x0

    .line 229
    .local v5, "_arg2":[I
    :goto_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v15, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v15}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v4, :cond_5

    .line 233
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 240
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 241
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 226
    .end local v5    # "_arg2":[I
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_4
    new-array v5, v14, [I

    .restart local v5    # "_arg2":[I
    goto :goto_5

    .line 237
    .restart local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 245
    .end local v3    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v4    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v5    # "_arg2":[I
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_10
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 249
    .local v3, "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 250
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 247
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 256
    :sswitch_11
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 263
    :sswitch_12
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 270
    :sswitch_13
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 279
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 290
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_15
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 298
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 300
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 302
    .local v7, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg6":I
    move-object/from16 v2, p0

    .line 305
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 311
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":I
    :sswitch_16
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 320
    .end local v3    # "_arg0":I
    :sswitch_17
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 326
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 328
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 329
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 335
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    :sswitch_18
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 339
    .local v3, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v2, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 340
    .local v4, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 346
    .end local v3    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v4    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_19
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    .line 352
    .local v4, "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    .line 353
    .local v5, "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 350
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 352
    .restart local v4    # "_arg1":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 359
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    :sswitch_1a
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 363
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 365
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    :sswitch_1b
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 376
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 377
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 383
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_1c
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    .line 386
    .local v3, "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRecentApps(Z)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 385
    .end local v3    # "_arg0":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 392
    :sswitch_1d
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v3, 0x1

    .line 396
    .restart local v3    # "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x1

    .line 397
    .local v4, "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideRecentApps(ZZ)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 394
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 396
    .restart local v3    # "_arg0":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 403
    .end local v3    # "_arg0":Z
    :sswitch_1e
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 410
    :sswitch_1f
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 417
    :sswitch_20
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 424
    :sswitch_21
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionPending()V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 431
    :sswitch_22
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionCancelled()V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 438
    :sswitch_23
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 442
    .local v10, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 443
    .local v12, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionStarting(JJ)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 449
    .end local v10    # "_arg0":J
    .end local v12    # "_arg1":J
    :sswitch_24
    const-string v2, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 452
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 457
    .local v3, "_arg0":Landroid/os/Bundle;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 455
    .end local v3    # "_arg0":Landroid/os/Bundle;
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_d

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
