.class public Lcom/nxp/nfc/gsma/internal/NxpNfcController;
.super Ljava/lang/Object;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    }
.end annotation


# static fields
.field public static final BATTERY_ALL_STATES:I = 0x2

.field public static final BATTERY_OPERATIONAL_STATE:I = 0x1

.field private static final MW_PROTOCOL_MASK_ISO_DEP:I = 0x8

.field public static final PROTOCOL_ISO_DEP:I = 0x10

.field public static final SCREEN_ALL_MODES:I = 0x2

.field public static final SCREEN_ON_AND_LOCKED_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "NxpNfcController"

.field public static final TECHNOLOGY_NFC_A:I = 0x1

.field public static final TECHNOLOGY_NFC_B:I = 0x2

.field public static final TECHNOLOGY_NFC_F:I = 0x4


# instance fields
.field private mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDialogBoxFlag:Z

.field private mEnable:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSeNameApduService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Z

.field private seExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 73
    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 74
    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 75
    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 76
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 73
    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    .line 74
    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 75
    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 76
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 147
    :cond_1
    return-void
.end method

.method private ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 14
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "apduService"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v12

    .line 191
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 192
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "sEname":Ljava/lang/String;
    const/4 v8, 0x0

    .line 195
    .local v8, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getModifiable()Z

    move-result v6

    .line 196
    .local v6, "modifiable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v9

    .line 197
    .local v9, "bannerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    .line 198
    .local v1, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    .line 199
    .local v7, "ApduAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    .local v0, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    if-eqz v6, :cond_0

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 203
    .local v10, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/AidGroup;

    .line 207
    .restart local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    .end local v10    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0, v9}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 213
    invoke-virtual {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    .line 214
    return-object v0
.end method

.method private ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 18
    .param p1, "mService"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v3, 0x0

    .line 224
    .local v3, "onHost":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getModifiable()Z

    move-result v14

    .line 226
    .local v14, "modifiable":Z
    const/4 v5, 0x0

    .line 227
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v6, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    const/4 v7, 0x0

    .line 230
    .local v7, "requiresUnlock":Z
    const/4 v13, 0x0

    .line 231
    .local v13, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 232
    .local v16, "seId":I
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 233
    .local v17, "seName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 234
    .local v15, "powerstate":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 236
    .local v8, "bannerId":I
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 237
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ServiceInfo;

    invoke-direct {v9}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 238
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 239
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p3

    iput-object v0, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 240
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 242
    const-string v9, "com.nxp.uicc.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 243
    const/16 v16, 0x2

    .line 251
    :goto_0
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 252
    .local v11, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .end local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v10, "Fixme: NXP:<Activity Name>"

    const/4 v12, 0x0

    move/from16 v9, p2

    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 254
    .restart local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    return-object v1

    .line 244
    .end local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_0
    const-string v9, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    const/16 v16, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const-string v9, "com.nxp.host.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 247
    const/16 v16, 0x0

    goto :goto_0

    .line 249
    :cond_2
    const-string v9, "NxpNfcController"

    const-string/jumbo v10, "wrong Se name"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return p1
.end method

.method static synthetic access$202(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public commitOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v3, 0x1

    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "result":Z
    invoke-virtual {p3}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "serviceName":Ljava/lang/String;
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 336
    .local v0, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eq v1, v3, :cond_0

    .line 337
    const-string v3, "NxpNfcController"

    const-string v4, "GSMA: commitOffHostService Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v3, 0x0

    .line 340
    :cond_0
    return v3
.end method

.method public commitOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/16 v16, 0x0

    .line 354
    .local v16, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 355
    .local v9, "userId":I
    const/16 v19, 0x0

    .line 356
    .local v19, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v3, 0x0

    .line 357
    .local v3, "onHost":Z
    const/4 v5, 0x0

    .line 358
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v6, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 360
    const/4 v7, 0x0

    .line 361
    .local v7, "requiresUnlock":Z
    const/4 v13, 0x0

    .line 362
    .local v13, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 363
    .local v17, "seId":I
    const/4 v15, -0x1

    .line 364
    .local v15, "powerstate":I
    const/4 v14, 0x1

    .line 367
    .local v14, "modifiable":Z
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 368
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 369
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v8, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v8, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 370
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 371
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 374
    const/16 v18, 0x0

    .line 375
    .local v18, "secureElement":Ljava/lang/String;
    const-string v4, "SIM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    const-string v18, "com.nxp.uicc.ID"

    .line 381
    :goto_0
    const-string v4, "com.nxp.uicc.ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    const/16 v17, 0x2

    .line 391
    :goto_1
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v17

    invoke-direct {v11, v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 392
    .local v11, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    const-string v10, "Fixme: NXP:<Activity Name>"

    const/4 v12, 0x0

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 396
    .local v1, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_4

    .line 407
    const-string v4, "NxpNfcController"

    const-string v8, "GSMA: commitOffHostService Failed"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v4, 0x0

    .line 410
    :goto_2
    return v4

    .line 378
    .end local v1    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_0
    const-string v18, "com.nxp.uicc.ID"

    goto :goto_0

    .line 383
    :cond_1
    const-string v4, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    const/16 v17, 0x1

    goto :goto_1

    .line 385
    :cond_2
    const-string v4, "com.nxp.host.ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 386
    const/16 v17, 0x0

    goto :goto_1

    .line 388
    :cond_3
    const-string v4, "NxpNfcController"

    const-string/jumbo v8, "wrong Se name"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 410
    .restart local v1    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_4
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public deleteOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v2, 0x1

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "result":Z
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 270
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eq v1, v2, :cond_0

    .line 271
    const-string v2, "NxpNfcController"

    const-string v3, "GSMA: deleteOffHostService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x0

    .line 274
    :cond_0
    return v2
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 427
    .local v1, "userId":I
    if-eq v0, v2, :cond_0

    .line 428
    const-string v2, "NxpNfcController"

    const-string v3, "GSMA: deleteOffHostService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x0

    .line 431
    :cond_0
    return v2
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 521
    return-void
.end method

.method public enableNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;)V
    .locals 5
    .param p1, "cb"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v2, "ownerFilter":Landroid/content/IntentFilter;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, "enableNfc":Landroid/content/Intent;
    const-string v3, "com.gsma.services.nfc.action.ENABLE_NFC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public getDefaultOffHostService(ILjava/lang/String;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 311
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, v2, v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v1

    .line 316
    :goto_0
    return-object v1

    .line 315
    :cond_0
    const-string v3, "NxpNfcController"

    const-string v4, "getDefaultOffHostService: Service is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultOffHostService(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 482
    const-string v3, "NxpNfcController"

    const-string v4, "getDefaultOffHostService: Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x1

    .line 486
    .local v0, "isLast":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 487
    .local v2, "userId":I
    const/4 v1, 0x0

    .line 507
    .local v1, "seName":Ljava/lang/String;
    const-string v3, "NxpNfcController"

    const-string v4, "getDefaultOffHostService: End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v3, 0x1

    return v3
.end method

.method public getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nxp/nfc/gsma/internal/NxpOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v2, "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    iget-object v5, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 291
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 292
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-direct {p0, v3, v4}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->ConvertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    return-object v2
.end method

.method public getOffHostServices(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 440
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 441
    .local v3, "userId":I
    const/4 v1, 0x0

    .line 442
    .local v1, "isLast":Z
    const/4 v2, 0x0

    .line 444
    .local v2, "seName":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v4, 0x1

    return v4
.end method

.method public isNxpNfcEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
