.class Lcom/htc/music/dlna/DmpMusicPlayer$1;
.super Ljava/lang/Object;
.source "DmpMusicPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/dlna/DmpMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/dlna/DmpMusicPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/dlna/DmpMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 230
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, "mDLNAConnection....onServiceConnected...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    #setter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2, v3}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$002(Lcom/htc/music/dlna/DmpMusicPlayer;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAPluginNotify:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$100(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 241
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 243
    .local v0, done:Z
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> mDLNAConnection...onServiceConnected()...done = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "[DmpMusicPlayer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDLNAConnection...onServiceConnected()...mServerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mContentID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAContentItemDetails:Lcom/htc/music/DMPContentItemDetails;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$400(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/music/DMPContentItemDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/DMPContentItemDetails;->reset()V

    .line 247
    iget-object v2, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mDLNAService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$000(Lcom/htc/music/dlna/DmpMusicPlayer;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mServerID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$200(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #getter for: Lcom/htc/music/dlna/DmpMusicPlayer;->mContentID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$300(Lcom/htc/music/dlna/DmpMusicPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v0           #done:Z
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v2, "[DmpMusicPlayer]"

    const-string v3, ">>>> mDLNAConnection...onServiceConnected()...mDLNAService is null..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 258
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 264
    const-string v0, "[DmpMusicPlayer]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDLNAConnection...onServiceDisconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/htc/music/dlna/DmpMusicPlayer$1;->this$0:Lcom/htc/music/dlna/DmpMusicPlayer;

    #calls: Lcom/htc/music/dlna/DmpMusicPlayer;->unBindDLNAService()V
    invoke-static {v0}, Lcom/htc/music/dlna/DmpMusicPlayer;->access$500(Lcom/htc/music/dlna/DmpMusicPlayer;)V

    .line 266
    return-void
.end method
