.class final enum Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# static fields
.field public static final enum BE:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

.field public static final enum BF:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

.field private static final synthetic BG:[Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mExpandableList:I

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 78
    new-instance v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const-string v3, "system"

    const v4, 0x7f0c0935

    const v5, 0x7f1302e9

    const v6, 0x7f1302ea

    const v7, 0x7f1302eb

    const v8, 0x7f1302ec

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BE:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    .line 85
    new-instance v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    const-string v1, "USER"

    const/4 v2, 0x1

    const-string v3, "user"

    const v4, 0x7f0c0936

    const v5, 0x7f1302ed

    const v6, 0x7f1302ee

    const v7, 0x7f1302ef

    const v8, 0x7f1302f0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BF:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BE:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BF:Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BG:[Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIZ)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput-object p3, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    .line 105
    iput p5, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mView:I

    .line 106
    iput p6, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 107
    iput p7, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mList:I

    .line 108
    iput p8, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 109
    iput-boolean p9, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/io;)I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->k(Lcom/android/vendorsettings/io;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/android/vendorsettings/ik;->Bx:[I

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->a(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;ZLcom/android/vendorsettings/io;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->a(ZLcom/android/vendorsettings/io;)V

    return-void
.end method

.method private a(ZLcom/android/vendorsettings/io;)V
    .locals 1

    .prologue
    .line 156
    if-eqz p1, :cond_2

    .line 157
    invoke-static {p2}, Lcom/android/vendorsettings/io;->e(Lcom/android/vendorsettings/io;)Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz v0, :cond_1

    .line 158
    invoke-static {p2}, Lcom/android/vendorsettings/io;->d(Lcom/android/vendorsettings/io;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, v0}, Lcom/android/vendorsettings/io;->a(Lcom/android/vendorsettings/io;Z)Z

    .line 162
    :goto_1
    invoke-static {p2}, Lcom/android/vendorsettings/io;->f(Lcom/android/vendorsettings/io;)Lcom/android/vendorsettings/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vendorsettings/iq;->notifyDataSetChanged()V

    .line 167
    :goto_2
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {p2}, Lcom/android/vendorsettings/io;->f(Lcom/android/vendorsettings/io;)Lcom/android/vendorsettings/iq;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/vendorsettings/iq;->b(Lcom/android/vendorsettings/io;)V

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {p2}, Lcom/android/vendorsettings/io;->f(Lcom/android/vendorsettings/io;)Lcom/android/vendorsettings/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vendorsettings/iq;->load()V

    goto :goto_2
.end method

.method private a(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    sget-object v1, Lcom/android/vendorsettings/ik;->Bx:[I

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 127
    :cond_0
    :pswitch_1
    return v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->a(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;Lcom/android/vendorsettings/io;)I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->l(Lcom/android/vendorsettings/io;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method private k(Lcom/android/vendorsettings/io;)I
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/android/vendorsettings/ik;->Bx:[I

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    invoke-static {p1}, Lcom/android/vendorsettings/io;->d(Lcom/android/vendorsettings/io;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const v0, 0x7f0c0938

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    const v0, 0x7f0c0937

    goto :goto_0

    .line 139
    :pswitch_1
    const v0, 0x7f0c0939

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private l(Lcom/android/vendorsettings/io;)I
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/android/vendorsettings/ik;->Bx:[I

    invoke-virtual {p0}, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :pswitch_0
    invoke-static {p1}, Lcom/android/vendorsettings/io;->d(Lcom/android/vendorsettings/io;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f0c093a

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const v0, 0x7f0c093b

    goto :goto_0

    .line 151
    :pswitch_1
    const v0, 0x7f0c093c

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->BG:[Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vendorsettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
