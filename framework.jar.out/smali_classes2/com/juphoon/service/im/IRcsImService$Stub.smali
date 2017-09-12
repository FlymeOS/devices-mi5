.class public abstract Lcom/juphoon/service/im/IRcsImService$Stub;
.super Landroid/os/Binder;
.source "IRcsImService.java"

# interfaces
.implements Lcom/juphoon/service/im/IRcsImService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/im/IRcsImService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.im.IRcsImService"

.field static final TRANSACTION_Mtc_GsGInfoLoadData:I = 0x70

.field static final TRANSACTION_Mtc_GsGInfoPushAcpt:I = 0x23

.field static final TRANSACTION_Mtc_GsGInfoPushBoth:I = 0x20

.field static final TRANSACTION_Mtc_GsGInfoPushBothP:I = 0x21

.field static final TRANSACTION_Mtc_GsGInfoPushBothU:I = 0x22

.field static final TRANSACTION_Mtc_GsGInfoPushCoord:I = 0x1d

.field static final TRANSACTION_Mtc_GsGInfoPushCoordP:I = 0x1e

.field static final TRANSACTION_Mtc_GsGInfoPushCoordU:I = 0x1f

.field static final TRANSACTION_Mtc_GsGInfoPushCoordX:I = 0x3e

.field static final TRANSACTION_Mtc_GsGInfoPushDeny:I = 0x24

.field static final TRANSACTION_Mtc_GsGInfoSaveData:I = 0x6f

.field static final TRANSACTION_Mtc_ImConfMSubsConf:I = 0x6e

.field static final TRANSACTION_Mtc_ImConfMSubsConfLst:I = 0x6d

.field static final TRANSACTION_Mtc_ImDbGetAutAcceptGroupChat:I = 0x3f

.field static final TRANSACTION_Mtc_ImDbGetCpimBase64EncodeEnable:I = 0x72

.field static final TRANSACTION_Mtc_ImDbGetFtAutAccept:I = 0x47

.field static final TRANSACTION_Mtc_ImDbGetFtMaxRunVusers:I = 0x49

.field static final TRANSACTION_Mtc_ImDbGetFtThumb:I = 0x48

.field static final TRANSACTION_Mtc_ImDbGetFtWarnSize:I = 0x4b

.field static final TRANSACTION_Mtc_ImDbGetImdnSendDeliReqEnable:I = 0x40

.field static final TRANSACTION_Mtc_ImDbGetMaxAdhocGroupSize:I = 0x69

.field static final TRANSACTION_Mtc_ImDbGetMaxSizeFileTr:I = 0x4a

.field static final TRANSACTION_Mtc_ImDbGetThumbBase64EncodeEnable:I = 0x73

.field static final TRANSACTION_Mtc_ImFileAccept:I = 0x4c

.field static final TRANSACTION_Mtc_ImFileAcceptResume:I = 0x1a

.field static final TRANSACTION_Mtc_ImFileFetchViaMsrp:I = 0x1b

.field static final TRANSACTION_Mtc_ImFileFetchViaMsrpX:I = 0x3d

.field static final TRANSACTION_Mtc_ImFileReject:I = 0x4d

.field static final TRANSACTION_Mtc_ImFileRelease:I = 0x1c

.field static final TRANSACTION_Mtc_ImFileResume:I = 0x18

.field static final TRANSACTION_Mtc_ImFileResumeB:I = 0x3c

.field static final TRANSACTION_Mtc_ImFileResumeP:I = 0x19

.field static final TRANSACTION_Mtc_ImFileResumeS:I = 0x3b

.field static final TRANSACTION_Mtc_ImFileResumeU:I = 0x3a

.field static final TRANSACTION_Mtc_ImFileResumeX:I = 0x39

.field static final TRANSACTION_Mtc_ImFileTrsf:I = 0x12

.field static final TRANSACTION_Mtc_ImFileTrsfB:I = 0x15

.field static final TRANSACTION_Mtc_ImFileTrsfP:I = 0x16

.field static final TRANSACTION_Mtc_ImFileTrsfS:I = 0x17

.field static final TRANSACTION_Mtc_ImFileTrsfU:I = 0x14

.field static final TRANSACTION_Mtc_ImFileTrsfX:I = 0x13

.field static final TRANSACTION_Mtc_ImGenPartpLstId:I = 0x6b

.field static final TRANSACTION_Mtc_ImLMsgSend:I = 0xa

.field static final TRANSACTION_Mtc_ImLMsgSendB:I = 0xb

.field static final TRANSACTION_Mtc_ImLMsgSendC:I = 0x10

.field static final TRANSACTION_Mtc_ImLMsgSendCU:I = 0x11

.field static final TRANSACTION_Mtc_ImLMsgSendP:I = 0xc

.field static final TRANSACTION_Mtc_ImLMsgSendS:I = 0xd

.field static final TRANSACTION_Mtc_ImLMsgSendU:I = 0x42

.field static final TRANSACTION_Mtc_ImLMsgSendV:I = 0xe

.field static final TRANSACTION_Mtc_ImLMsgSendVU:I = 0xf

.field static final TRANSACTION_Mtc_ImMsBackupAppend:I = 0x59

.field static final TRANSACTION_Mtc_ImMsBackupBegin:I = 0x57

.field static final TRANSACTION_Mtc_ImMsBackupEnd:I = 0x58

.field static final TRANSACTION_Mtc_ImMsCreate:I = 0x53

.field static final TRANSACTION_Mtc_ImMsDelete:I = 0x54

.field static final TRANSACTION_Mtc_ImMsGetCookie:I = 0x56

.field static final TRANSACTION_Mtc_ImMsGetObjCount:I = 0x5c

.field static final TRANSACTION_Mtc_ImMsObjAddChild:I = 0x60

.field static final TRANSACTION_Mtc_ImMsObjAddData:I = 0x65

.field static final TRANSACTION_Mtc_ImMsObjAddInt:I = 0x64

.field static final TRANSACTION_Mtc_ImMsObjAddStr:I = 0x63

.field static final TRANSACTION_Mtc_ImMsObjCreate:I = 0x5d

.field static final TRANSACTION_Mtc_ImMsObjDelete:I = 0x5f

.field static final TRANSACTION_Mtc_ImMsObjEnumChild:I = 0x62

.field static final TRANSACTION_Mtc_ImMsObjGetChildCount:I = 0x61

.field static final TRANSACTION_Mtc_ImMsObjGetData:I = 0x68

.field static final TRANSACTION_Mtc_ImMsObjGetInt:I = 0x67

.field static final TRANSACTION_Mtc_ImMsObjGetStr:I = 0x66

.field static final TRANSACTION_Mtc_ImMsObjGetType:I = 0x5e

.field static final TRANSACTION_Mtc_ImMsRestoreBegin:I = 0x5a

.field static final TRANSACTION_Mtc_ImMsRestoreEnd:I = 0x5b

.field static final TRANSACTION_Mtc_ImMsSetCookie:I = 0x55

.field static final TRANSACTION_Mtc_ImPMsgSend:I = 0x2

.field static final TRANSACTION_Mtc_ImPMsgSendB:I = 0x3

.field static final TRANSACTION_Mtc_ImPMsgSendC:I = 0x8

.field static final TRANSACTION_Mtc_ImPMsgSendCU:I = 0x9

.field static final TRANSACTION_Mtc_ImPMsgSendP:I = 0x4

.field static final TRANSACTION_Mtc_ImPMsgSendS:I = 0x5

.field static final TRANSACTION_Mtc_ImPMsgSendU:I = 0x41

.field static final TRANSACTION_Mtc_ImPMsgSendV:I = 0x6

.field static final TRANSACTION_Mtc_ImPMsgSendVU:I = 0x7

.field static final TRANSACTION_Mtc_ImParsePartpLstId:I = 0x6c

.field static final TRANSACTION_Mtc_ImSessAccept:I = 0x2d

.field static final TRANSACTION_Mtc_ImSessAcceptPhone:I = 0x2e

.field static final TRANSACTION_Mtc_ImSessAcptMdfyChairMan:I = 0x50

.field static final TRANSACTION_Mtc_ImSessAddPartp:I = 0x29

.field static final TRANSACTION_Mtc_ImSessAddPartpU:I = 0x2a

.field static final TRANSACTION_Mtc_ImSessCancel:I = 0x31

.field static final TRANSACTION_Mtc_ImSessDissolve:I = 0x4e

.field static final TRANSACTION_Mtc_ImSessEplPartp:I = 0x2b

.field static final TRANSACTION_Mtc_ImSessEplPartpU:I = 0x2c

.field static final TRANSACTION_Mtc_ImSessEstabU:I = 0x26

.field static final TRANSACTION_Mtc_ImSessGetMaxUsrCnt:I = 0x6a

.field static final TRANSACTION_Mtc_ImSessIsExist:I = 0x25

.field static final TRANSACTION_Mtc_ImSessLeave:I = 0x32

.field static final TRANSACTION_Mtc_ImSessMdfyChairMan:I = 0x4f

.field static final TRANSACTION_Mtc_ImSessMdfyDispName:I = 0x52

.field static final TRANSACTION_Mtc_ImSessMdfySubject:I = 0x44

.field static final TRANSACTION_Mtc_ImSessMsgSendGeoBoth:I = 0x46

.field static final TRANSACTION_Mtc_ImSessMsgSendGeoCoord:I = 0x45

.field static final TRANSACTION_Mtc_ImSessMsgSendM:I = 0x33

.field static final TRANSACTION_Mtc_ImSessMsgSendMC:I = 0x35

.field static final TRANSACTION_Mtc_ImSessMsgSendMPhone:I = 0x36

.field static final TRANSACTION_Mtc_ImSessMsgSendMPhoneC:I = 0x38

.field static final TRANSACTION_Mtc_ImSessMsgSendMPhoneV:I = 0x37

.field static final TRANSACTION_Mtc_ImSessMsgSendMV:I = 0x34

.field static final TRANSACTION_Mtc_ImSessReJoinG:I = 0x27

.field static final TRANSACTION_Mtc_ImSessReStartG:I = 0x28

.field static final TRANSACTION_Mtc_ImSessReject:I = 0x2f

.field static final TRANSACTION_Mtc_ImSessRejectPhone:I = 0x30

.field static final TRANSACTION_Mtc_ImSessRjctMdfyChairMan:I = 0x51

.field static final TRANSACTION_Mtc_ImdnSendDisp:I = 0x43

.field static final TRANSACTION_Mtc_ImmsGetProcessingSessId:I = 0x71

.field static final TRANSACTION_Mtc_PaSessEncodeMsg:I = 0x74

.field static final TRANSACTION_isSession1To1:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.juphoon.service.im.IRcsImService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/im/IRcsImService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/im/IRcsImService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.juphoon.service.im.IRcsImService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/im/IRcsImService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/juphoon/service/im/IRcsImService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/juphoon/service/im/IRcsImService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 44
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1687
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->isSession1To1()Z

    move-result v42

    .line 54
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v42, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 60
    .end local v42    # "_result":Z
    :sswitch_2
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 68
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x1

    goto :goto_0

    .line 74
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 80
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 81
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 82
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    const/4 v4, 0x1

    goto :goto_0

    .line 88
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 95
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 96
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 102
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 108
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 110
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    move-object/from16 v4, p0

    .line 115
    invoke-virtual/range {v4 .. v10}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v42

    .line 116
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 126
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 128
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 129
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 130
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 136
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 142
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendVU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 144
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 150
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 154
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 156
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 157
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 158
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 164
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 170
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendCU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 172
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 178
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 185
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 186
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 192
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 196
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 198
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 199
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 200
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 206
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 212
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 213
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 214
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 220
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 226
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 228
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 230
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 232
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg5":I
    move-object/from16 v4, p0

    .line 233
    invoke-virtual/range {v4 .. v10}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v42

    .line 234
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 240
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 246
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 247
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 248
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 254
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 258
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 260
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 261
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendVU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 262
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 268
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 272
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 274
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 276
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 282
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 286
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 288
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 289
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendCU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 290
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 296
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 300
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 302
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 306
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, "_arg4":[B
    move-object/from16 v4, p0

    .line 307
    invoke-virtual/range {v4 .. v9}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileTrsf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object v42

    .line 308
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 314
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":[B
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 318
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 320
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 322
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 328
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg6":[B
    move-object/from16 v4, p0

    .line 329
    invoke-virtual/range {v4 .. v11}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileTrsfX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object v42

    .line 330
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 336
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":[B
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 340
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 342
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 344
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 346
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .local v9, "_arg4":[B
    move-object/from16 v4, p0

    .line 347
    invoke-virtual/range {v4 .. v9}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileTrsfU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object v42

    .line 348
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 354
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":[B
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 358
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 360
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 362
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 363
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileTrsfB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v42

    .line 364
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 370
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 374
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 376
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 378
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 380
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .restart local v9    # "_arg4":[B
    move-object/from16 v4, p0

    .line 381
    invoke-virtual/range {v4 .. v9}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileTrsfP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object v42

    .line 382
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 388
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":[B
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 392
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 394
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 396
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 398
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg6":I
    move-object/from16 v4, p0

    .line 403
    invoke-virtual/range {v4 .. v11}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileTrsfS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v42

    .line 404
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 410
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    .line 414
    .local v5, "_arg0":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 416
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 418
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 422
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 424
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 426
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 428
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 430
    .local v13, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 432
    .local v14, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .local v15, "_arg10":[B
    move-object/from16 v4, p0

    .line 433
    invoke-virtual/range {v4 .. v15}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileResume(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I

    move-result v42

    .line 434
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 412
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    .end local v15    # "_arg10":[B
    .end local v42    # "_result":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 440
    :sswitch_19
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    .line 444
    .restart local v5    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 446
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 448
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 450
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 452
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 454
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 456
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 458
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 460
    .restart local v13    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 462
    .restart local v14    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .restart local v15    # "_arg10":[B
    move-object/from16 v4, p0

    .line 463
    invoke-virtual/range {v4 .. v15}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileResumeP(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I

    move-result v42

    .line 464
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 442
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    .end local v15    # "_arg10":[B
    .end local v42    # "_result":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 470
    :sswitch_1a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 476
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 478
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 479
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileAcceptResume(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v42

    .line 480
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 486
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v42    # "_result":I
    :sswitch_1b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 492
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 495
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileFetchViaMsrp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 496
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 502
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_1c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 506
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v6, 0x1

    .line 507
    .local v6, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileRelease(Ljava/lang/String;Z)I

    move-result v42

    .line 508
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 506
    .end local v6    # "_arg1":Z
    .end local v42    # "_result":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 514
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 518
    .local v18, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 520
    .local v20, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 522
    .local v7, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 524
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 525
    invoke-virtual/range {v17 .. v24}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushCoord(DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 526
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 532
    .end local v7    # "_arg2":F
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg0":D
    .end local v20    # "_arg1":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 536
    .restart local v18    # "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 538
    .restart local v20    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 540
    .restart local v7    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 542
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 543
    invoke-virtual/range {v17 .. v24}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushCoordP(DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 544
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 550
    .end local v7    # "_arg2":F
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg0":D
    .end local v20    # "_arg1":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 554
    .restart local v18    # "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 556
    .restart local v20    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 558
    .restart local v7    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 560
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v17, p0

    move/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 561
    invoke-virtual/range {v17 .. v24}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushCoordU(DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 562
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 568
    .end local v7    # "_arg2":F
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg0":D
    .end local v20    # "_arg1":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 572
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v26

    .line 576
    .local v26, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v28

    .line 578
    .local v28, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 580
    .local v9, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 582
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 583
    invoke-virtual/range {v23 .. v32}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushBoth(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 584
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 590
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg4":F
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v26    # "_arg2":D
    .end local v28    # "_arg3":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 594
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 596
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v26

    .line 598
    .restart local v26    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v28

    .line 600
    .restart local v28    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 602
    .restart local v9    # "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 604
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 605
    invoke-virtual/range {v23 .. v32}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushBothP(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 606
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 612
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg4":F
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v26    # "_arg2":D
    .end local v28    # "_arg3":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 616
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 618
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v26

    .line 620
    .restart local v26    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v28

    .line 622
    .restart local v28    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 624
    .restart local v9    # "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 626
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 627
    invoke-virtual/range {v23 .. v32}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushBothU(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 628
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 634
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg4":F
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v26    # "_arg2":D
    .end local v28    # "_arg3":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 637
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushAcpt(Ljava/lang/String;)I

    move-result v42

    .line 638
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 644
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_24
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 647
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushDeny(Ljava/lang/String;)I

    move-result v42

    .line 648
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 654
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_25
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 657
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessIsExist(Ljava/lang/String;)Z

    move-result v42

    .line 658
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v42, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 659
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 664
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Z
    :sswitch_26
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 668
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 670
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 671
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessEstabU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 672
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 678
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 682
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 684
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 686
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 687
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessReJoinG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 688
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 694
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_28
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 698
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 700
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 701
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessReStartG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 702
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 708
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_29
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 712
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 713
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessAddPartp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 714
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 720
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_2a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 724
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 725
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessAddPartpU(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 726
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 732
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_2b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 736
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 737
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessEplPartp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 738
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 744
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_2c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 748
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 749
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessEplPartpU(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 750
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 756
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_2d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 760
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 761
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessAccept(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 762
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 768
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_2e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 771
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessAcceptPhone(Ljava/lang/String;)I

    move-result v42

    .line 772
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 778
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_2f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 782
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 783
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessReject(Ljava/lang/String;I)I

    move-result v42

    .line 784
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 790
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v42    # "_result":I
    :sswitch_30
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 795
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessRejectPhone(Ljava/lang/String;I)I

    move-result v42

    .line 796
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 802
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v42    # "_result":I
    :sswitch_31
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 805
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessCancel(Ljava/lang/String;)I

    move-result v42

    .line 806
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 812
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_32
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 815
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessLeave(Ljava/lang/String;)I

    move-result v42

    .line 816
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 822
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_33
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 826
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 828
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 830
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 831
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 832
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 834
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 838
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 842
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 844
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 846
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 847
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendMV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 848
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 850
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 854
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 858
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 860
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 862
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 863
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendMC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 864
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 870
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 874
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 876
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 877
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendMPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 878
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 884
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 888
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 890
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 891
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendMPhoneV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 892
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 898
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 902
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 904
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 905
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendMPhoneC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 906
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 912
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    .line 916
    .local v5, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 918
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 920
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 922
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 924
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 926
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 928
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 930
    .local v12, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 932
    .restart local v13    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 934
    .restart local v14    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 936
    .local v15, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .local v16, "_arg11":[B
    move-object/from16 v4, p0

    .line 937
    invoke-virtual/range {v4 .. v16}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileResumeX(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I

    move-result v42

    .line 938
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 914
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    .end local v15    # "_arg10":I
    .end local v16    # "_arg11":[B
    .end local v42    # "_result":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 944
    :sswitch_3a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 950
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 952
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 954
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 956
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 958
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 960
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 962
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 964
    .restart local v13    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .local v14, "_arg9":[B
    move-object/from16 v4, p0

    .line 965
    invoke-virtual/range {v4 .. v14}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileResumeU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)I

    move-result v42

    .line 966
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 972
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":[B
    .end local v42    # "_result":I
    :sswitch_3b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 976
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 978
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 980
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 982
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 984
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 986
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 988
    .restart local v11    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 990
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 992
    .restart local v13    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 994
    .local v14, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 996
    .local v15, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "_arg11":I
    move-object/from16 v4, p0

    .line 997
    invoke-virtual/range {v4 .. v16}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileResumeS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v42

    .line 998
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":Ljava/lang/String;
    .end local v15    # "_arg10":Ljava/lang/String;
    .end local v16    # "_arg11":I
    .end local v42    # "_result":I
    :sswitch_3c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    .line 1008
    .local v5, "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1010
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1012
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1014
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1016
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1018
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1020
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1022
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1024
    .restart local v13    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg9":I
    move-object/from16 v4, p0

    .line 1025
    invoke-virtual/range {v4 .. v14}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileResumeB(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v42

    .line 1026
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1006
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    .end local v14    # "_arg9":I
    .end local v42    # "_result":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_7

    .line 1032
    :sswitch_3d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1036
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1038
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1040
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1042
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1044
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg5":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 1045
    invoke-virtual/range {v4 .. v10}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileFetchViaMsrpX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1046
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1052
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_3e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 1056
    .restart local v18    # "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 1058
    .restart local v20    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 1060
    .local v7, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1062
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1064
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1066
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg6":Ljava/lang/String;
    move-object/from16 v31, p0

    move-wide/from16 v32, v18

    move-wide/from16 v34, v20

    move/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    .line 1067
    invoke-virtual/range {v31 .. v40}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoPushCoordX(DDFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1068
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1070
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v7    # "_arg2":F
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v18    # "_arg0":D
    .end local v20    # "_arg1":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetAutAcceptGroupChat()Z

    move-result v42

    .line 1076
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    if-eqz v42, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1077
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 1082
    .end local v42    # "_result":Z
    :sswitch_40
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetImdnSendDeliReqEnable()Z

    move-result v42

    .line 1084
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    if-eqz v42, :cond_8

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1085
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 1090
    .end local v42    # "_result":Z
    :sswitch_41
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1094
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1096
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1097
    .local v7, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImPMsgSendU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1098
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1100
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1104
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_42
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1108
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1110
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1111
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImLMsgSendU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1112
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1114
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1118
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1122
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1124
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1126
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1127
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImdnSendDisp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1128
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1134
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_44
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1138
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1139
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMdfySubject(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1140
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1146
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_45
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1150
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1152
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v26

    .line 1154
    .restart local v26    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v28

    .line 1156
    .restart local v28    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 1158
    .local v9, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1160
    .restart local v10    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v11, 0x1

    .local v11, "_arg6":Z
    :goto_a
    move-object/from16 v23, p0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v30, v9

    move-object/from16 v31, v10

    move/from16 v32, v11

    .line 1161
    invoke-virtual/range {v23 .. v32}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendGeoCoord(Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Z)I

    move-result v42

    .line 1162
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1160
    .end local v11    # "_arg6":Z
    .end local v42    # "_result":I
    :cond_9
    const/4 v11, 0x0

    goto :goto_a

    .line 1168
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg4":F
    .end local v10    # "_arg5":Ljava/lang/String;
    .end local v26    # "_arg2":D
    .end local v28    # "_arg3":D
    :sswitch_46
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1172
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1174
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1176
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v28

    .line 1178
    .restart local v28    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v36

    .line 1180
    .local v36, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 1182
    .local v10, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1184
    .local v11, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v12, 0x1

    .local v12, "_arg7":Z
    :goto_b
    move-object/from16 v30, p0

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-wide/from16 v34, v28

    move/from16 v38, v10

    move-object/from16 v39, v11

    move/from16 v40, v12

    .line 1185
    invoke-virtual/range {v30 .. v40}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMsgSendGeoBoth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDFLjava/lang/String;Z)I

    move-result v42

    .line 1186
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1184
    .end local v12    # "_arg7":Z
    .end local v42    # "_result":I
    :cond_a
    const/4 v12, 0x0

    goto :goto_b

    .line 1192
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg5":F
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v28    # "_arg3":D
    .end local v36    # "_arg4":D
    :sswitch_47
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetFtAutAccept()Z

    move-result v42

    .line 1194
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    if-eqz v42, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1195
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1200
    .end local v42    # "_result":Z
    :sswitch_48
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetFtThumb()Z

    move-result v42

    .line 1202
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    if-eqz v42, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1203
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1208
    .end local v42    # "_result":Z
    :sswitch_49
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetFtMaxRunVusers()I

    move-result v42

    .line 1210
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v42    # "_result":I
    :sswitch_4a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetMaxSizeFileTr()I

    move-result v42

    .line 1218
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1224
    .end local v42    # "_result":I
    :sswitch_4b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetFtWarnSize()I

    move-result v42

    .line 1226
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v42    # "_result":I
    :sswitch_4c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1236
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1237
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileAccept(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1238
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1244
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_4d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1247
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImFileReject(Ljava/lang/String;)I

    move-result v42

    .line 1248
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1254
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_4e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1257
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessDissolve(Ljava/lang/String;)I

    move-result v42

    .line 1258
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1264
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_4f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1268
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1269
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMdfyChairMan(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1270
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1276
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_50
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1279
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessAcptMdfyChairMan(Ljava/lang/String;)I

    move-result v42

    .line 1280
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1286
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_51
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1289
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessRjctMdfyChairMan(Ljava/lang/String;)I

    move-result v42

    .line 1290
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1296
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_52
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1300
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1301
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessMdfyDispName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1302
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1308
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_53
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1311
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsCreate(Ljava/lang/String;)I

    move-result v42

    .line 1312
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1318
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_54
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1321
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsDelete(I)I

    move-result v42

    .line 1322
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1328
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_55
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1332
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1333
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsSetCookie(ILjava/lang/String;)I

    move-result v42

    .line 1334
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1340
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_56
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1343
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsGetCookie(I)Ljava/lang/String;

    move-result-object v42

    .line 1344
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1346
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v5    # "_arg0":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1354
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1355
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsBackupBegin(ILjava/lang/String;)I

    move-result v42

    .line 1356
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_58
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1365
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsBackupEnd(I)I

    move-result v42

    .line 1366
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_59
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1376
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1377
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsBackupAppend(II)I

    move-result v42

    .line 1378
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1384
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":I
    :sswitch_5a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1388
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1389
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsRestoreBegin(ILjava/lang/String;)I

    move-result v42

    .line 1390
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1396
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_5b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1399
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsRestoreEnd(I)I

    move-result v42

    .line 1400
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1406
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_5c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1409
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsGetObjCount(I)I

    move-result v42

    .line 1410
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_5d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1419
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjCreate(I)I

    move-result v42

    .line 1420
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_5e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1429
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjGetType(I)I

    move-result v42

    .line 1430
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1436
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_5f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1439
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjDelete(I)I

    move-result v42

    .line 1440
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_60
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1450
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1451
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjAddChild(II)I

    move-result v42

    .line 1452
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1458
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":I
    :sswitch_61
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1461
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjGetChildCount(I)I

    move-result v42

    .line 1462
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1468
    .end local v5    # "_arg0":I
    .end local v42    # "_result":I
    :sswitch_62
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1472
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1473
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjEnumChild(II)I

    move-result v42

    .line 1474
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":I
    :sswitch_63
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1484
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1486
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1487
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjAddStr(IILjava/lang/String;)I

    move-result v42

    .line 1488
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1494
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_64
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1498
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1500
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 1501
    .local v26, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjAddInt(IIJ)I

    move-result v42

    .line 1502
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1508
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v26    # "_arg2":J
    .end local v42    # "_result":I
    :sswitch_65
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1512
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1514
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1515
    .local v7, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjAddData(II[B)I

    move-result v42

    .line 1516
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1522
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":[B
    .end local v42    # "_result":I
    :sswitch_66
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1526
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1527
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjGetStr(II)Ljava/lang/String;

    move-result-object v42

    .line 1528
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1530
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1534
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_67
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1538
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1539
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjGetInt(II)J

    move-result-wide v42

    .line 1540
    .local v42, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    move-object/from16 v0, p3

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1542
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1546
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":J
    :sswitch_68
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1550
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1551
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImMsObjGetData(II)[B

    move-result-object v42

    .line 1552
    .local v42, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1554
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1558
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v42    # "_result":[B
    :sswitch_69
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetMaxAdhocGroupSize()I

    move-result v42

    .line 1560
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1566
    .end local v42    # "_result":I
    :sswitch_6a
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1569
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImSessGetMaxUsrCnt(Ljava/lang/String;)I

    move-result v42

    .line 1570
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1576
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_6b
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1579
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImGenPartpLstId(Ljava/lang/String;)I

    move-result v42

    .line 1580
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1586
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_6c
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1589
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImParsePartpLstId(I)Ljava/lang/String;

    move-result-object v42

    .line 1590
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1592
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1596
    .end local v5    # "_arg0":I
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_6d
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImConfMSubsConfLst()I

    move-result v42

    .line 1598
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1604
    .end local v42    # "_result":I
    :sswitch_6e
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1608
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1609
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImConfMSubsConf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v42

    .line 1610
    .restart local v42    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1616
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":I
    :sswitch_6f
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1620
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1622
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1624
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v28

    .line 1626
    .restart local v28    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v36

    .line 1628
    .restart local v36    # "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 1630
    .restart local v10    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1632
    .restart local v11    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg7":Ljava/lang/String;
    move-object/from16 v30, p0

    move/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v33, v7

    move-wide/from16 v34, v28

    move/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    .line 1633
    invoke-virtual/range {v30 .. v40}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoSaveData(IILjava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1634
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1636
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1640
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg5":F
    .end local v11    # "_arg6":Ljava/lang/String;
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v28    # "_arg3":D
    .end local v36    # "_arg4":D
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1644
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1646
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1647
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_GsGInfoLoadData(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1648
    .restart local v42    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1650
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1654
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v42    # "_result":Ljava/lang/String;
    :sswitch_71
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImmsGetProcessingSessId()I

    move-result v42

    .line 1656
    .local v42, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1662
    .end local v42    # "_result":I
    :sswitch_72
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetCpimBase64EncodeEnable()Z

    move-result v42

    .line 1664
    .local v42, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    if-eqz v42, :cond_d

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1665
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 1670
    .end local v42    # "_result":Z
    :sswitch_73
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_ImDbGetThumbBase64EncodeEnable()Z

    move-result v42

    .line 1672
    .restart local v42    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    if-eqz v42, :cond_e

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1673
    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .line 1678
    .end local v42    # "_result":Z
    :sswitch_74
    const-string v4, "com.juphoon.service.im.IRcsImService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1681
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/juphoon/service/im/IRcsImService$Stub;->Mtc_PaSessEncodeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1682
    .local v42, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1684
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 43
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
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
